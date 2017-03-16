# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    s_counter, t_counter = [s, t].collect { |str|
        str.chars.group_by { |c| c }.map { |c, group| [c, group.size] }.to_h
    }
    t_counter.find { |tc, count| count != s_counter[tc] }
end
