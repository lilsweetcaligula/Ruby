def array(string)
    vals = string.split(",")
    if (vals.size > 2) 
        vals[1, vals.size - 2].join(" ") 
    else 
        nil 
    end
end
