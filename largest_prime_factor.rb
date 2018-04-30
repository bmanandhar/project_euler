=begin
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of a number ?
Result:
=end

def largest_prime_factor(num)
  factors = []
  prime_large = nil
  (1...num).each do |i|
    factors << i if num % i == 0
  end

  factors.each do |fact|
    if is_prime?(fact)
      prime_large = fact
    end
  end

  prime_large
end

#helper function
def is_prime?(n)
  arr = []
  x = 1
  while x <= n
    arr << x if n % x == 0
    x += 1
  end
  arr.length == 2
end
p largest_prime_factor(13195) == 29
