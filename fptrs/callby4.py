#include <stdio.h>

def foo(x):
    x[0] = 6

a = [5]
foo(a)
print(a)
