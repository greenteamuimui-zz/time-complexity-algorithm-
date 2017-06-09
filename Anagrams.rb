def first_anagram?(str1,str2)
  x = str1.chars.permutation(str1.length).to_a.map(&:join)
  x.include?(str2)
end

def second_anagram?(str1,str2)
  x = str1.chars
  y = str2.chars
  until x.empty?
    current = x.pop
    delete_index = nil
    y.each_with_index do |val,idx|
      if val == current
        delete_index = idx
        break
      end
    end
    return false unless delete_index
    y.delete_at(delete_index)
  end
  true
end


def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2)
  hash = Hash.new(0)
  str1.each_char do |ch|
    hash[ch] += 1
  end
  str2.each_char do |ch|
    hash[ch] -=1
  end
  hash.all? {|k,v| v == 0}
end
