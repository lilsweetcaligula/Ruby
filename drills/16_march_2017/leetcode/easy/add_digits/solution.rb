# @param {Integer} num
# @return {Integer}
def add_digits(num)
  digits = num.to_s
  
  while digits.size > 1 do
    digits = digits.chars.map { |x| x.to_i }.reduce(:+).to_s
  end
  
  digits.to_i
end
