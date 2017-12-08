array = [6,3,8,9,2, 5,1]
def insertion_sort(array)
  for i in 1..(array.length-1)
    key = array[i]
    j=i-1
    while j>=0 && array[j]>key
      array[j+1]= array[j]
      j=j-1
    end
    array[j+1]= key
  end
  array
end
p insertion_sort(array)