/* { dg-do compile { target int128 } } */
/* { dg-options "-O2 -msse2 -mtune=generic -dp" } */

struct foo
{
  __int128 i;
}__attribute__ ((packed));

extern struct foo x, y;

void
foo (void)
{
  x = y;
}

/* { dg-final { scan-assembler-times "movv1ti_internal" 2 } } */
/* { dg-final { scan-assembler-not "\\*movdi_internal" { target nonpic } } } */
