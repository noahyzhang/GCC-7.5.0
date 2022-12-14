//===-- asan_malloc_linux.cc ----------------------------------------------===//
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file is a part of AddressSanitizer, an address sanity checker.
//
// Linux-specific malloc interception.
// We simply define functions like malloc, free, realloc, etc.
// They will replace the corresponding libc functions automagically.
//===----------------------------------------------------------------------===//

#include "sanitizer_common/sanitizer_platform.h"
#if SANITIZER_FREEBSD || SANITIZER_LINUX

#include "sanitizer_common/sanitizer_tls_get_addr.h"
#include "asan_allocator.h"
#include "asan_interceptors.h"
#include "asan_internal.h"
#include "asan_stack.h"

// #include <stdlib.h>
// #include <dlfcn.h>

// // // 默认需要包装的最小内存、最大内存
// unsigned int WRAP_ALLOCATE_MIN_BYTE_val = 32;
// unsigned int WRAP_ALLOCATE_MAX_BYTE_val = 48;

// // 通过环境变量获取 WRAP_ALLOCATE_MAX_BYTE、WRAP_ALLOCATE_MIN_BYTE
// static __attribute__((constructor)) void init_user_env() {
//   const char* max_wrap_allocate = getenv("WRAP_ALLOCATE_MAX_BYTE");
//   if (max_wrap_allocate != nullptr) {
//      WRAP_ALLOCATE_MAX_BYTE_val = std::atoi(max_wrap_allocate);
//   }
//   const char* min_wrap_allocate = getenv("WRAP_ALLOCATE_MIN_BYTE");
//   if (min_wrap_allocate != nullptr) {
//     WRAP_ALLOCATE_MIN_BYTE_val = std::atoi(min_wrap_allocate);
//   }
// }

// typedef void* (*malloc_type)(size_t);
// typedef void (*free_type)(void*);
// typedef void (*cfree_type)(void*);
// typedef void* (*calloc_type)(size_t nmemb, size_t size);
// typedef void* (*realloc_type)(void* ptr, size_t size);
// typedef void* (*memalign_type)(size_t __alignment, size_t __size);
// typedef int (*posix_memalign_type)(void **__memptr, size_t __alignment, size_t __size);
// typedef void* (*aligned_alloc_type)(size_t __alignment, size_t __size);
// typedef void* (*valloc_type)(size_t __size);
// typedef void* (*pvalloc_type)(size_t __size);
// typedef size_t (*malloc_usable_size_type)(void*);

// static malloc_type real_malloc = nullptr;
// static free_type real_free = nullptr;
// static cfree_type real_cfree = nullptr;
// static calloc_type real_calloc = nullptr;
// static realloc_type real_realloc = nullptr;
// static memalign_type real_memalign = nullptr;
// static posix_memalign_type real_posix_memalign = nullptr;
// static aligned_alloc_type real_aligned_alloc = nullptr;
// static valloc_type real_valloc = nullptr;
// static pvalloc_type real_pvalloc = nullptr;
// static malloc_usable_size_type real_malloc_usable_size = nullptr;

// static __attribute__((constructor)) void init_allocate() {
//     real_malloc = reinterpret_cast<malloc_type>(dlsym(RTLD_NEXT, "malloc"));
//     real_free = reinterpret_cast<free_type>(dlsym(RTLD_NEXT, "free"));
//     real_cfree = reinterpret_cast<cfree_type>(dlsym(RTLD_NEXT, "cfree"));
//     real_calloc = reinterpret_cast<calloc_type>(dlsym(RTLD_NEXT, "calloc"));
//     real_realloc = reinterpret_cast<realloc_type>(dlsym(RTLD_NEXT, "realloc"));
//     real_memalign = reinterpret_cast<memalign_type>(dlsym(RTLD_NEXT, "memalign"));
//     real_posix_memalign = reinterpret_cast<posix_memalign_type>(dlsym(RTLD_NEXT, "posix_memalign"));
//     real_aligned_alloc = reinterpret_cast<aligned_alloc_type>(dlsym(RTLD_NEXT, "aligned_alloc"));
//     real_valloc = reinterpret_cast<valloc_type>(dlsym(RTLD_NEXT, "valloc"));
//     real_pvalloc = reinterpret_cast<pvalloc_type>(dlsym(RTLD_NEXT, "pvalloc"));
//     real_malloc_usable_size = reinterpret_cast<malloc_usable_size_type>(dlsym(RTLD_NEXT, "malloc_usable_size"));
// }

// // 实现 malloc_usable_size

// #define INTERNAL_SIZE_T size_t
// #define SIZE_SZ                (sizeof(INTERNAL_SIZE_T))

// struct malloc_chunk {

//   INTERNAL_SIZE_T      prev_size;  /* Size of previous chunk (if free).  */
//   INTERNAL_SIZE_T      size;       /* Size in bytes, including overhead. */

//   struct malloc_chunk* fd;         /* double links -- used only if free. */
//   struct malloc_chunk* bk;
// };

// typedef struct malloc_chunk* mchunkptr;

// #define mem2chunk(mem) ((mchunkptr)((char*)(mem) - 2*SIZE_SZ))

// #define IS_MMAPPED 0x2
// #define PREV_INUSE 0x1
// #define IS_MMAPPED 0x2
// #define NON_MAIN_ARENA 0x4
// #define chunk_is_mmapped(p) ((p)->size & IS_MMAPPED)

// #define SIZE_BITS (PREV_INUSE|IS_MMAPPED|NON_MAIN_ARENA)
// #define chunksize(p)         ((p)->size & ~(SIZE_BITS))

// #define inuse(p)\
// ((((mchunkptr)(((char*)(p))+((p)->size & ~SIZE_BITS)))->size) & PREV_INUSE)


// size_t my_malloc_usable_size(void* mem) {
//   mchunkptr p;
//   if (mem != 0) {
//     p = mem2chunk(mem);
//     if (chunk_is_mmapped(p))
//       return chunksize(p) - 2*SIZE_SZ;
//     else if (inuse(p))
//       return chunksize(p) - SIZE_SZ;
//   }
//   return 0;
// }

// ---------------------- Replacement functions ---------------- {{{1
using namespace __asan;  // NOLINT

static uptr allocated_for_dlsym;
static const uptr kDlsymAllocPoolSize = 1024;
static uptr alloc_memory_for_dlsym[kDlsymAllocPoolSize];

static bool IsInDlsymAllocPool(const void *ptr) {
  uptr off = (uptr)ptr - (uptr)alloc_memory_for_dlsym;
  return off < sizeof(alloc_memory_for_dlsym);
}

static void *AllocateFromLocalPool(uptr size_in_bytes) {
  uptr size_in_words = RoundUpTo(size_in_bytes, kWordSize) / kWordSize;
  void *mem = (void*)&alloc_memory_for_dlsym[allocated_for_dlsym];
  allocated_for_dlsym += size_in_words;
  CHECK_LT(allocated_for_dlsym, kDlsymAllocPoolSize);
  return mem;
}

INTERCEPTOR(void, free, void *ptr) {
  // GET_STACK_TRACE_FREE;
  if (UNLIKELY(IsInDlsymAllocPool(ptr)))
    return;
  // asan_free(ptr, &stack, FROM_MALLOC);
  // size_t size = real_malloc_usable_size(ptr);
  if (ptr == nullptr) return;
  // size_t size = my_malloc_usable_size(ptr);
  // uptr old_size = *( (uptr*) ( (uptr*)(ptr) - 1 ) );
  // if (old_size == 0) return;
  // uptr new_size = old_size;
  // void* new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 1 );
  // if (old_size == MAGIC_NUMBER) {
  //   new_size = *( (uptr*) ( (uptr*)(ptr) - 2 ) );
  //   new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 2 );
  // }

  uptr sz = *( (uptr*) ( (uptr*)(ptr) - 2 ) );
  if (sz == 0) return;
  void* new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 2 );

  if (sz >= WRAP_ALLOCATE_MIN_BYTE_val && sz <= WRAP_ALLOCATE_MAX_BYTE_val) {
    GET_STACK_TRACE_FREE;
    asan_free(new_ptr, &stack, FROM_MALLOC);
  } else {
    real_free(new_ptr);
  }
}

INTERCEPTOR(void, cfree, void *ptr) {
  // GET_STACK_TRACE_FREE;
  if (UNLIKELY(IsInDlsymAllocPool(ptr)))
    return;
  // asan_free(ptr, &stack, FROM_MALLOC);
  // size_t size = real_malloc_usable_size(ptr);
  // size_t size = my_malloc_usable_size(ptr);
  if (ptr == nullptr) return;

  // uptr old_size = *( (uptr*) ( (uptr*)(ptr) - 1 ) );
  // if (old_size == 0) return;
  // uptr new_size = old_size;
  // void* new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 1 );
  // if (old_size == MAGIC_NUMBER) {
  //   new_size = *( (uptr*) ( (uptr*)(ptr) - 2 ) );
  //   new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 2 );
  // }

  uptr sz = *( (uptr*) ( (uptr*)(ptr) - 2 ) );
  if (sz == 0) return;
  void* new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 2 );

  if (sz >= WRAP_ALLOCATE_MIN_BYTE_val && sz <= WRAP_ALLOCATE_MAX_BYTE_val) {
    GET_STACK_TRACE_FREE;
    asan_free(new_ptr, &stack, FROM_MALLOC);
  } else {
    real_cfree(new_ptr);
  }
}

INTERCEPTOR(void*, malloc, uptr size) {
  if (UNLIKELY(!asan_inited))
    // Hack: dlsym calls malloc before REAL(malloc) is retrieved from dlsym.
    return AllocateFromLocalPool(size);
  GET_STACK_TRACE_MALLOC;
  // return asan_malloc(size, &stack);
  uptr new_size = size+16;
  void* ptr = nullptr;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    ptr = asan_malloc(new_size, &stack);
  } else {
    // return REAL(malloc)(size);
    ptr = real_malloc(new_size);
    // return __interceptor_malloc(size);
    // return __interception::real_malloc(size);
  }
  (* (uptr*)(ptr) ) = new_size;
  return (void*)( (uptr*)(ptr) + 2 );
}

INTERCEPTOR(void*, calloc, uptr nmemb, uptr size) {
  if (UNLIKELY(!asan_inited))
    // Hack: dlsym calls calloc before REAL(calloc) is retrieved from dlsym.
    return AllocateFromLocalPool(nmemb * size);
  GET_STACK_TRACE_MALLOC;
  // return asan_calloc(nmemb, size, &stack);
  uptr new_size = nmemb*size + 16;
  void* ptr = nullptr;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    ptr = asan_calloc(1, new_size, &stack);
  } else {
    ptr = real_calloc(1, new_size);
  }
  (* (uptr*)(ptr) ) = new_size;
  return (void*)( (uptr*)(ptr) + 2 );
}

INTERCEPTOR(void*, realloc, void *ptr, uptr size) {
  GET_STACK_TRACE_MALLOC;
  if (UNLIKELY(IsInDlsymAllocPool(ptr))) {
    uptr offset = (uptr)ptr - (uptr)alloc_memory_for_dlsym;
    uptr copy_size = Min(size, kDlsymAllocPoolSize - offset);
    void *new_ptr;
    if (UNLIKELY(!asan_inited)) {
      new_ptr = AllocateFromLocalPool(size);
    } else {
      copy_size = size;
      new_ptr = asan_malloc(copy_size, &stack);
      // if (size >= WRAP_ALLOCATE_MIN_BYTE_val && size <= WRAP_ALLOCATE_MAX_BYTE_val) {
      //   new_ptr = asan_malloc(copy_size, &stack);
      // } else {
      //   new_ptr = real_malloc(copy_size);
      // }
    }
    internal_memcpy(new_ptr, ptr, copy_size);
    return new_ptr;
  }


  // 先处理旧的内存
  if (ptr != nullptr) {
    // size_t old_size = my_malloc_usable_size(ptr);
    uptr old_size = *( (uptr*)( (uptr*)(ptr) - 2) );
    ptr = (void*)(uptr*)( (uptr*)(ptr) - 2 );
    if (old_size >= WRAP_ALLOCATE_MIN_BYTE_val && old_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
      asan_free(ptr, &stack, FROM_MALLOC);
    } else if (old_size != 0) {
      real_free(ptr);
    }
  }

  // 申请新的内存
  uptr new_size = size+16;
  void* new_ptr = nullptr;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    new_ptr = asan_malloc(new_size, &stack);
  } else {
    new_ptr = real_malloc(new_size);
  }
  ( *( (uptr*)(new_ptr) ) ) = new_size;
  return (void*)( (uptr*)(new_ptr) + 2 );
}

INTERCEPTOR(void*, memalign, uptr boundary, uptr size) {
  GET_STACK_TRACE_MALLOC;
  // return asan_memalign(boundary, size, &stack, FROM_MALLOC);
  uptr new_size = size+16;
  void* ptr = nullptr;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    ptr = asan_memalign(boundary, new_size, &stack, FROM_MALLOC);
  } else {
    ptr = real_memalign(boundary, new_size);
  }
  ((* (uptr*)(ptr) )) = new_size;
  // (* ( (uptr*)(ptr) + 1 ) ) = MAGIC_NUMBER;
  return (void*)( (uptr*)(ptr) + 2 );
}

INTERCEPTOR(void*, aligned_alloc, uptr boundary, uptr size) {
  GET_STACK_TRACE_MALLOC;
  // return asan_memalign(boundary, size, &stack, FROM_MALLOC);
  uptr new_size = size+16;
  void* ptr = nullptr;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    ptr = asan_memalign(boundary, new_size, &stack, FROM_MALLOC);
  } else {
    ptr = real_memalign(boundary, new_size);
  }
  ((* (uptr*)(ptr) )) = new_size;
  // (* ( (uptr*)(ptr) + 1 ) ) = MAGIC_NUMBER;
  return (void*)( (uptr*)(ptr) + 2 );
}

INTERCEPTOR(void*, __libc_memalign, uptr boundary, uptr size) {
  GET_STACK_TRACE_MALLOC;
  // void *res = asan_memalign(boundary, size, &stack, FROM_MALLOC);
  // DTLS_on_libc_memalign(res, size);
  uptr new_size = size+16;
  void* ptr = nullptr;
  // void* res = nullptr;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    ptr = asan_memalign(boundary, new_size, &stack, FROM_MALLOC);
    DTLS_on_libc_memalign(ptr, new_size);
  } else {
    ptr = real_memalign(boundary, new_size);
  }
  ((* (uptr*)(ptr) )) = new_size;
  // (* ( (uptr*)(ptr) + 1) ) = MAGIC_NUMBER;
  return (void*)( (uptr*)(ptr) + 2 );
}

INTERCEPTOR(uptr, malloc_usable_size, void *ptr) {
  GET_CURRENT_PC_BP_SP;
  (void)sp;

  // uptr old_size = *( (uptr*) ( (uptr*)(ptr) - 1 ) );
  // if (old_size == 0) return 0;
  // uptr new_size = old_size;
  // void* new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 1 );
  // if (old_size == MAGIC_NUMBER) {
  //   new_size = *( (uptr*) ( (uptr*)(ptr) - 2 ) );
  //   new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 2 );
  // }

  uptr sz = *( (uptr*) ( (uptr*)(ptr) - 2 ) );
  if (sz == 0) return 0;
  void* new_ptr = (void*)(uptr*)( (uptr*)(ptr) - 2 );
  uptr res = 0;

  if (sz >= WRAP_ALLOCATE_MIN_BYTE_val && sz <= WRAP_ALLOCATE_MAX_BYTE_val) {
    res = asan_malloc_usable_size(new_ptr, pc, bp);
  } else {
    res = real_malloc_usable_size(new_ptr);
  }
  return (res - 16) > 0 ? (res - 16) : 0;
}

// We avoid including malloc.h for portability reasons.
// man mallinfo says the fields are "long", but the implementation uses int.
// It doesn't matter much -- we just need to make sure that the libc's mallinfo
// is not called.
struct fake_mallinfo {
  int x[10];
};

INTERCEPTOR(struct fake_mallinfo, mallinfo, void) {
  struct fake_mallinfo res;
  REAL(memset)(&res, 0, sizeof(res));
  return res;
}

INTERCEPTOR(int, mallopt, int cmd, int value) {
  return -1;
}

INTERCEPTOR(int, posix_memalign, void **memptr, uptr alignment, uptr size) {
  GET_STACK_TRACE_MALLOC;
  // Printf("posix_memalign: %zx %zu\n", alignment, size);
  uptr new_size = size+16;
  int res = 0;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    res = asan_posix_memalign(memptr, alignment, new_size, &stack);
  } else {
    res = real_posix_memalign(memptr, alignment, new_size);
  }
  ( *(uptr*)(*memptr) ) = new_size;
  // (* ( (uptr*)(*memptr) + 1 ) ) = MAGIC_NUMBER;
  *memptr = (void*)( (uptr*)(*memptr) + 2 );
  return res;
}

INTERCEPTOR(void*, valloc, uptr size) {
  GET_STACK_TRACE_MALLOC;
  uptr new_size = size+16;
  void* ptr = nullptr;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    ptr = asan_valloc(new_size, &stack);
  } else {
    ptr = real_valloc(new_size);
  }
  (* (uptr*)(ptr) ) = new_size;
  // (* ( (uptr*)(ptr) + 1) ) = MAGIC_NUMBER;
  return (void*)( (uptr*)(ptr) + 2 );
}

INTERCEPTOR(void*, pvalloc, uptr size) {
  GET_STACK_TRACE_MALLOC;
  uptr new_size = size+16;
  void* ptr = nullptr;
  if (new_size >= WRAP_ALLOCATE_MIN_BYTE_val && new_size <= WRAP_ALLOCATE_MAX_BYTE_val) {
    ptr = asan_pvalloc(new_size, &stack);
  } else {
    ptr = real_pvalloc(new_size);
  }
  (* (uptr*)(ptr) ) = new_size;
  // (* ( (uptr*)(ptr) + 1) ) = MAGIC_NUMBER;
  return (void*)( (uptr*)(ptr) + 2 );
}

INTERCEPTOR(void, malloc_stats, void) {
  __asan_print_accumulated_stats();
}

#if SANITIZER_ANDROID
// Format of __libc_malloc_dispatch has changed in Android L.
// While we are moving towards a solution that does not depend on bionic
// internals, here is something to support both K* and L releases.
struct MallocDebugK {
  void *(*malloc)(uptr bytes);
  void (*free)(void *mem);
  void *(*calloc)(uptr n_elements, uptr elem_size);
  void *(*realloc)(void *oldMem, uptr bytes);
  void *(*memalign)(uptr alignment, uptr bytes);
  uptr (*malloc_usable_size)(void *mem);
};

struct MallocDebugL {
  void *(*calloc)(uptr n_elements, uptr elem_size);
  void (*free)(void *mem);
  fake_mallinfo (*mallinfo)(void);
  void *(*malloc)(uptr bytes);
  uptr (*malloc_usable_size)(void *mem);
  void *(*memalign)(uptr alignment, uptr bytes);
  int (*posix_memalign)(void **memptr, uptr alignment, uptr size);
  void* (*pvalloc)(uptr size);
  void *(*realloc)(void *oldMem, uptr bytes);
  void* (*valloc)(uptr size);
};

ALIGNED(32) const MallocDebugK asan_malloc_dispatch_k = {
    WRAP(malloc),  WRAP(free),     WRAP(calloc),
    WRAP(realloc), WRAP(memalign), WRAP(malloc_usable_size)};

ALIGNED(32) const MallocDebugL asan_malloc_dispatch_l = {
    WRAP(calloc),         WRAP(free),               WRAP(mallinfo),
    WRAP(malloc),         WRAP(malloc_usable_size), WRAP(memalign),
    WRAP(posix_memalign), WRAP(pvalloc),            WRAP(realloc),
    WRAP(valloc)};

namespace __asan {
void ReplaceSystemMalloc() {
  void **__libc_malloc_dispatch_p =
      (void **)AsanDlSymNext("__libc_malloc_dispatch");
  if (__libc_malloc_dispatch_p) {
    // Decide on K vs L dispatch format by the presence of
    // __libc_malloc_default_dispatch export in libc.
    void *default_dispatch_p = AsanDlSymNext("__libc_malloc_default_dispatch");
    if (default_dispatch_p)
      *__libc_malloc_dispatch_p = (void *)&asan_malloc_dispatch_k;
    else
      *__libc_malloc_dispatch_p = (void *)&asan_malloc_dispatch_l;
  }
}
}  // namespace __asan

#else  // SANITIZER_ANDROID

namespace __asan {
void ReplaceSystemMalloc() {
}
}  // namespace __asan
#endif  // SANITIZER_ANDROID

#endif  // SANITIZER_FREEBSD || SANITIZER_LINUX
