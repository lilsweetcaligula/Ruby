def unflatten(flat_array)
  result = []
  i      = 0
  
  while i < flat_array.size do
    x = flat_array[i]
    
    if x > 2
      result << flat_array[i, x]
      i += x
    else
      result << x
      i += 1
    end
    
  end
  
  result
end
