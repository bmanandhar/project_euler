
=begin
nth Prime Number
Adapted from Project Euler Problem 7
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the nth prime number?

  nth_prime(6) => 13
  nth_prime(10) => 29
  nth_prime(1000) => 7919

  # Last challenge: find the 10001th prime. Note that it make take a while to compute.
=end

def nth_prime(n)

  primes = []
  i = 2
  while primes.length < n
    primes << i if prime?(i)
    i += 1
  end

  primes
end

# helper

def prime?(int)

  arr = []
  i = 1
  while i <= int
    arr << i if int % i == 0
    i += 1
  end

  arr.length == 2
end
