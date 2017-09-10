# Implementation of the Quicksort algorithm
def quicksort(list)
  if list.size < 2
    list
  else
    pivot = list[0]
    less = list.select { |e| e < pivot }
    greater = list.select { |e| e > pivot }
    quicksort(less) + [pivot] + quicksort(greater)
  end
end

puts quicksort([0]).inspect # 0
puts quicksort([5, 1]).inspect # [1, 5]
puts quicksort([6, 3, 10, -1, 99]).inspect # [-1, 3, 6, 10, 99]
puts quicksort([8, 7, 6, 5, 4, 3, 2, 1]).inspect # [1, 2, 3, 4, 5, 6, 7, 8]