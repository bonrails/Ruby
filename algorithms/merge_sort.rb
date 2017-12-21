#merge sort
#
#def merge_sort(array)
#  return array if array.size<=1
#
#  mid = array.size/2
#  left = array[0, mid]
#  right = array[mid, array.size-mid]
#  merge(merge_sort(left), merge_sort(right))
#
#end
#
#def merge(left, right)
#  sorted = []
#
#  until left.empty? or right.empty?
#    if left.first <= right.first
#      sorted << left.shift
#    else
#      sorted << right.shift
#    end
#  end
#  sorted.concat(left).concat(right)
#end

#with less code
def merge_sort(arr)
  return arr unless arr.size > 1
  mid = arr.size/2
  a, b, sorted = merge_sort(arr[0...mid]), merge_sort(arr[mid..-1]), []
  sorted << (a[0] < b[0] ? a.shift : b.shift) while [a,b].none?(&:empty?)
  sorted + a + b
end

array= [7, 2, 1, 6, 4, 5]
p merge_sort(array)