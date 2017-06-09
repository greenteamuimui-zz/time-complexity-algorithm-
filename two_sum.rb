def two_sum_n2(arr, target_sum)
  arr.combination(2).to_a.any? {|x,y| x + y == target_sum}
end


def two_sum_nlogn(arr, target_sum)
  arr_sorted = arr.sort!
  arr_sorted[0..-2].each_with_index do |num,idx|
    return true if arr_sorted[idx+1..-1].bsearch {|x| (target_sum - num) - x}
  end
  false
end

def two_sum_n(arr, target_sum)
  hash = {}
  arr.each do |el|
    hash[el] = true
  end
  arr.each do |el|
    x = hash[target_sum - el]
    return true if x && target_sum - el != el
  end
  false
end
