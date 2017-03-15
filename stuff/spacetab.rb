def tabs_to_spaces(src, space_per_tab=4)
    src.gsub("\t", " " * space_per_tab)
end

def inc_indent(src, times)
    result = []
    
    for line in src.lines do    
        curr_indent_size = line.chars.take_while { |c|
            c != "\n" && c =~ /\s/
        }.size
        
        result << " " * (times * curr_indent_size) + line[curr_indent_size..-1]
    end
    
    return result.join
end
