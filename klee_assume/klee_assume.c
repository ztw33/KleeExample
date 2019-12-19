#include "klee/klee.h"

int main() {
  int c,d;
  klee_make_symbolic(&c, sizeof(c), "c");
  klee_make_symbolic(&d, sizeof(d), "d");

  klee_assume((c==2) & (d==3));

  return 0;
}