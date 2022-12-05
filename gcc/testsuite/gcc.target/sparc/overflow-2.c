/* { dg-do compile } */
/* { dg-options "-O -mcpu=v8" } */
/* { dg-require-effective-target ilp32 } */

#include <stdbool.h>
#include <stdint.h>

bool my_uadd_overflow (uint64_t a, uint64_t b, uint64_t *res)
{
  return __builtin_add_overflow (a, b, res);
}

bool my_usub_overflow (uint64_t a, uint64_t b, uint64_t *res)
{
  return __builtin_sub_overflow (a, b, res);
}

bool my_uneg_overflow (uint64_t a, uint64_t *res)
{
  return __builtin_sub_overflow (0, a, res);
}

bool my_add_overflow (int64_t a, int64_t b, int64_t *res)
{
  return __builtin_add_overflow (a, b, res);
}

bool my_sub_overflow (int64_t a, int64_t b, int64_t *res)
{
  return __builtin_sub_overflow (a, b, res);
}

bool my_neg_overflow (int64_t a, int64_t *res)
{
  return __builtin_sub_overflow (0, a, res);
}

/* { dg-final { scan-assembler-times "addcc\t%" 2 } } */
/* { dg-final { scan-assembler-times "addxcc\t%" 2 } } */
/* { dg-final { scan-assembler-times "subcc\t%" 4 } } */
/* { dg-final { scan-assembler-times "subxcc\t%" 4 } } */
/* { dg-final { scan-assembler-times "addx\t%" 2 } } */
/* { dg-final { scan-assembler-times "blu" 1 } } */
/* { dg-final { scan-assembler-times "bvs" 3 } } */
/* { dg-final { scan-assembler-not "cmp\t%" } } */
/* { dg-final { scan-assembler-not "save\t%" } } */
