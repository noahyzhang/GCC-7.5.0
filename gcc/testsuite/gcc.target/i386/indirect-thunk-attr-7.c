/* { dg-do compile } */
/* { dg-options "-O2 -mno-indirect-branch-register -mfunction-return=keep " } */
/* { dg-additional-options "-fno-pic" { target { ! *-*-darwin* } } } */

void func0 (void);
void func1 (void);
void func2 (void);
void func3 (void);
void func4 (void);
void func4 (void);
void func5 (void);

__attribute__ ((indirect_branch("thunk-extern")))
void
bar (int i)
{
  switch (i)
    {
    default:
      func0 ();
      break;
    case 1:
      func1 ();
      break;
    case 2:
      func2 ();
      break;
    case 3:
      func3 ();
      break;
    case 4:
      func4 ();
      break;
    case 5:
      func5 ();
      break;
    }
}

/* { dg-final { scan-assembler "mov(?:l|q)\[ \t\]*\.L\[0-9\]+\\(,%" { target *-*-linux* } } } */
/* { dg-final { scan-assembler {leaq[ \t]*L[0-9]+\(%rip\)} { target { lp64 && *-*-darwin* } } } } */
/* { dg-final { scan-assembler {addl[ \t]*L[0-9]+-L[0-9]+\$pb} { target { ia32 && *-*-darwin* } } } } */
/* { dg-final { scan-assembler "jmp\[ \t\]*_?__x86_indirect_thunk_(r|e)ax" } } */
/* { dg-final { scan-assembler-not {\t(lfence|pause)} } } */
/* { dg-final { scan-assembler-not {jmp[ \t]*\.?LIND} } } */
/* { dg-final { scan-assembler-not {call[ \t]*\.?LIND} } } */