# Use of Divide & Conquer technique

def sum(list)
  if list.empty?
    return 0
  else
    list[0] + sum(list.slice(1, list.length - 1))
  end
end

puts sum([1, 2, 3, 4]) # => 10
puts sum([20, 15, 10]) # => 45
puts sum([-1]) # => -1