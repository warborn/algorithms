# Recursive implementation of the Binary Search algorithm
def binary_search(list, item)
  return false if list.empty?

  mid = list.size / 2
  guess = list[mid]
  if guess > item
    binary_search(list.slice(0, mid - 1), item)
  elsif guess < item
    binary_search(list.slice(mid + 1, list.size - 1), item)
  else 
    true
  end
end

array = [1, 20, 33, 53, 66, 84, 99, 101];

# Example call
puts binary_search(array, 20) # => true
puts binary_search(array, 101) # => true
puts binary_search(array, 66) # => true
puts binary_search(array, 0) # => false
puts binary_search(array, 999) # => false
puts binary_search([], 1) # => false