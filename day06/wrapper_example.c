// wrapper_example.c
#include <stdio.h>

struct Wrapper {
   int value;
};

int main() {
   struct Wrapper w1;
   struct Wrapper w2;
   w1.value = 1;
   w2 = w1;
   printf("%i %i\n",w1.value,w2.value);
   w2.value = 2;
   printf("%i %i\n",w1.value,w2.value);
}
