#selection sort
def selection_sort(a)
  n=a.size
  (n-1).times do |i|
    min_index= i
    (i+1).upto(n-1) do |j|
      min_index = j if a[j] < a[min_index]
    end
    a[i] , a[min_index] = a[min_index], a[i]  if min_index!=i
  end
  a
end

array= [4,8,3,6,2,5]
p selection_sort(array)

