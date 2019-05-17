x = 8

def fun1():
    #global x
    print(x)
    x = 6

def fun2(x):
    print(x)
    x = 6

fun2(12)
#fun1()
print(x)
