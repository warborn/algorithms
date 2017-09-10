# Implementation of the Binary Search
def binary_search(list, item)
  low = 0
  high = list.size - 1
  while low <= high
    mid = (low + high) / 2
    guess = list[mid]
    return mid if guess == item
    
    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
  nil
end

# Sorted Array
array = [1, 20, 33, 53, 66, 84, 99, 101];

# Example call
puts binary_search(array, 20) # => 1
puts binary_search(array, 101) # => 7
puts binary_search(array, 66) # => 4
puts binary_search(array, 0) # => nil