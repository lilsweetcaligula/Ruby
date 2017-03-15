def alias_gen(first, last)
    if !([first, last].all? {
            |name| 
            name.index(/[A-Za-z]/) == 0
        })
        return 'Your name must start with a letter from A - Z.'
    end
    
    return "#{FIRST_NAME[first[0].upcase]} #{SURNAME[last[0].upcase]}"
end
