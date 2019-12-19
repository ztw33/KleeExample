#include <klee/klee.h>

// void query(int input, int output) {
//     input = 3;
//     output = 1;
// }

int main() {
    int input, output;
    int a;
    klee_make_symbolic(&input, sizeof(input), "input");
    klee_make_symbolic(&output, sizeof(output), "output");
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_assume(a == input);
    klee_assume(input==3);
    klee_assume(output==1);

    return 0;
}