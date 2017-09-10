# Recursive function to get the length of a list
def list_length(list)
  list.empty? ? 0 : 1 + list_length(list[1..-1])
end

puts list_length([1, 2, 3, 4]) # => 4
puts list_length((1..100).to_a) # => 10
puts list_length([]) # => 0