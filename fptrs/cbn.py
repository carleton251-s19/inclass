def sum(index, low, high, expr):
    total = 0
    for index in range(low,high):
        total = total + expr
    return total

x = [1,9,3,3]
sum(i, 0, 4, x[i])
