'''
Each new term in the Fibonacci sequence is generated by adding the
previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values
do not exceed four million, find the sum of the even-valued terms.
'''

def even_fibonacci_sum(limit):
    sum, x, y = 0, 1, 2
    while y < limit:
        if y % 2 == 0:
            sum += y
        x, y = y, x + y
    return sum
print even_fibonacci_sum(150) == 188 
