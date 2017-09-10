# Find the max value inside a list using recursion
def max(list)
  return nil if list.empty?
  return list[0] if list.size == 1
  submax = max(list[1..-1])
  list[0] > submax ? list[0] : submax
end

puts max([1, 2, 3, 4, 5]) # => 5
puts max([1, -1, 100, 22, 33]) # => 100
puts max((1..999).to_a) # => 999
puts max([0]) # => 0
puts max([]) # => nil