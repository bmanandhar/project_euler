=begin
If we list all the natural numbers below 10
that are multiples of 3 or 5, we get 3, 5, 6 and 9.
The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
=end

#using "each" loop
def three_n_five_sum(num)
  sum = 0
  (1...num).each do |i|
    if (i % 3 == 0 && i % 5 != 0) || (i % 5 == 0 && i % 3 != 0)
      sum += i
    end
  end

  sum
end
p three_n_five_sum(10)

#using "while" loop
def three_n_five_sum(num)
  sum = 0

  i = 0
  while i < num

    if i % 3 == 0 && i % 5 != 0
      sum += i
    elsif i % 5 == 0 && i % 3 != 0
      sum += i
    end

    i += 1
  end

  sum
end
p three_n_five_sum(10)
