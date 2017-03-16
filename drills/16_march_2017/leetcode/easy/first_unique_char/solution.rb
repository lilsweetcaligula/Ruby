# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    counter = s.chars
             .group_by { |c| c }
             .map      { |ch, chunk| [ch, chunk.size] }
             .to_h
     
    s.chars.find_index { |c|
        counter[c] < 2
    } || -1
end
