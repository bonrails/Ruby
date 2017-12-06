def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

input = [4, 7, 2, 3, 6, 9]
p bubble_sort(input)

