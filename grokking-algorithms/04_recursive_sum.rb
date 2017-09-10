# Use of Divide & Conquer technique
def sum(list)
  return 0 if list.empty?
  list[0] + sum(list[1..-1])
end

puts sum([1, 2, 3, 4]) # => 10
puts sum([20, 15, 10]) # => 45
puts sum([-1]) # => -1