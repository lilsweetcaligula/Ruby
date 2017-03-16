# @param {Integer} num
# @return {Integer}
def find_complement(num)
    num.to_s(2).chars.map { |bit| if (bit == "1") then "0" else "1" end }.join("").to_i(2)
end
