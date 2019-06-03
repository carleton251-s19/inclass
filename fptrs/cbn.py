#include <stdio.h>

void foo(int x) {
   x = 6;
}

int main() {
   int a = 5;
   foo(a);
   printf("%i\n",a);
}
