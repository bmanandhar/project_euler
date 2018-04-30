'''
If we list all the natural numbers below 10
that are multiples of 3 or 5, we get 3, 5, 6 and 9.
The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 'num'.
'''

def three_n_five_sum(num):
    sum = 0

    for i in range(1, num):
        if i % 3 == 0 and i % 5 != 0:
            sum += i
        elif i % 5 == 0 and i % 3 != 0:
            sum += i
    return sum
    
print three_n_five_sum(10) == 23
print three_n_five_sum(100) == 2003
