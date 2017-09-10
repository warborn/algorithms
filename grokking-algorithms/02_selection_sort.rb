# Implemenation of Selection Sort Algorithm
def find_smallest(list)
  greatest = list.first
  greatest_index = 0;
  for i in (1...list.size) do
    if greatest < list[i]
      greatest = list[i]
      greatest_index = i;
    end
  end
  greatest_index
end


def selection_sort(list)
  new_list = []

  list.size.times do
    smallest = find_smallest(list)
    new_list << list.slice!(smallest)
  end

  new_list
end

# Example call
array = [183, 301, 12, 33, 234, 100, 550, 1]
puts selection_sort(array).inspect # [550, 301, 234, 183, 100, 33, 12, 1]