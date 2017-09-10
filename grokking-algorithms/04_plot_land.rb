# Use of Divide & Conquer technique
def biggest_plot(width, height)
  min, max = [width, height].minmax
  squares = max / min
  remaining = max - (squares * min)
  return remaining == 0 ? min : biggest_plot(remaining, max)
end

puts biggest_plot(1680, 640) # => 80
puts biggest_plot(3000, 640) # => 120