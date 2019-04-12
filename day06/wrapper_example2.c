// wrapper_example2.c
#include <stdio.h>
#include <stdlib.h>

struct Wrapper {
   int value;
};

int main() {
   struct Wrapper *w1 = malloc(sizeof(struct Wrapper));
   struct Wrapper *w2 = malloc(sizeof(struct Wrapper));
   (*w1).value = 1;
   w2 = w1;
   printf("%i %i\n",(*w1).value,(*w2).value);
   (*w2).value = 2;
   printf("%i %i\n",(*w1).value,(*w2).value);
}
