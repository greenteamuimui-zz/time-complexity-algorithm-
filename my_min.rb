def my_min_nsqr(array)
  return nil if array.empty?
  min = array[0]
  array[0..-2].each_index do |i|
    array[i+1..-1].each_index do |j|
      if array[i] > array[j] && array[j] < min
        min = array[j]
      end
    end
  end
  min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_nsqr(list)


def my_min_n(array)
  return nil if array.empty?
  min = array[0]
  array.each do |value|
    if value < min
      min = value
    end
  end
  min
end
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_n(list)
