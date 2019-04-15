#include <stdio.h>
#include <stdlib.h>

int main() {
    int a = 12;
    //int *b;   // read it as int* b;
    //b = malloc(sizeof(int));
    int *b = malloc(sizeof(int));
    *b = 9;
    printf("%i\n", a);
    printf("%i\n", *b);

    // Wacky pointer tricks, because I can
    // x points to the memory location that
    // a is the named container for
    // & = "address of"
    int *x = &a;
    *x = 19;
    printf("%i\n", a);
}
