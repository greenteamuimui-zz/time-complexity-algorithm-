require 'byebug'
def largest_subsum_n2(array)
  ans = []
  i = 0
  while i < array.length - 1
    j = i
    while j < array.length
      ans << array[i..j].reduce(:+)
      j += 1
    end
    i += 1
  end
  ans.max
end

def largest_subsum_n(array) #I need to work on this
  cur_sum = array[0]
  large_sum = cur_sum
  array.each_with_index do |val,idx|
    next if idx == 0
    if cur_sum + val >= cur_sum
      cur_sum = cur_sum + val
      if cur_sum > large_sum
        large_sum = cur_sum
      end
    else
      cur_sum = val
    end
  end
  p large_sum
  p cur_sum
  large_sum > cur_sum ? large_sum : cur_sum
end


  def highest_sum(arr)
    i = 1
    sum = arr[0]
    largest_sum = sum
    while i < arr.length
      if largest_sum < 0
        largest_sum = arr[i] if largest_sum < arr[i]
      end
      if sum + arr[i] >= 0
        sum += arr[i]
        largest_sum = sum if sum > largest_sum
        i += 1
      else
        i += 1
        sum = 0
      end
    end
    largest_sum
  end
