def min(list, &block)
    list.reduce {
        |x, y| 
        if block.call(x, y) < 0 then x else y end
    }
end
