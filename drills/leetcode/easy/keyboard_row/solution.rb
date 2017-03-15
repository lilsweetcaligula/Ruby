# @param {String[]} words
# @return {String[]}
def find_words(words)
    require 'set'
    
    kb_rows = [
        Set.new("QWERTYUIOPqwertyuiop".chars),
        Set.new("ASDFGHJKLasdfghjkl"  .chars),
        Set.new("ZXCVBNMzxcvbnm"      .chars),
    ]
    
    return words.find_all { |w|
        if w.size > 0
            kb_row = kb_rows.detect { |x|
                x.include?(w[0])
            }
            
            kb_row && w.chars.all? { |c|
                kb_row.include?(c)
            }      
        end
    }  
end
