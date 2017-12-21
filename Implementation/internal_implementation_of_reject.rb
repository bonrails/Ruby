class Array
  def reject
    array = []
    self.each do |i|
      array<<i if !yield(i)
    end
    p array
    array
  end
end

total = ['alpha', 'bravo', 'charlie', 'delta', 'echo']
hide = ['charlie', 'echo']


pick = total.reject do |i|
  hide.include?(i)
end
puts pick