#insertion sort
def insertion_sort(arr)

  for i in 1..(arr.length-1)
    key = arr[i]
    j=i-1
    while j>=0 && arr[j]>key
      arr[j+1]= arr[j]
      j=j-1
    end
    arr[j+1]= key
  end
  arr
end

array = [6,3,8,9,2, 5,1]
p insertion_sort(array)

