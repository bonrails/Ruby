#merge sort

def merge_sort(array)
  return array if array.size<=1

  mid = array.size/2
  left = array[0, mid]
  right = array[mid, array.size-mid]
  merge(merge_sort(left), merge_sort(right))

end

def merge(left, right)
  sorted = []

  until left.empty? or right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

array= [7, 2, 1, 6, 4, 5]
p merge_sort(array)