# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  s.chars
   .each_slice(k)
   .map.with_index { |chunk, i| 
     if i % 2 == 0 
       chunk.reverse
     else 
       chunk
     end 
   }.flatten
    .join
end
