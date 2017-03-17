=begin
  This one's actually O(n^2) due to array slicing, there's a simple O(n) solution,
  but hey, this one has recursion in it! Fancy fancy!
=end

def unflatten(flat_array, res=nil)
  res = [] if res == nil
  
  if flat_array && flat_array.size > 0
    if flat_array.first > 2
      res << flat_array[0...flat_array.first]
      unflatten(flat_array[flat_array.first..-1], res)
    else
      res << flat_array.first
      unflatten(flat_array[1..-1], res)
    end   
  else
    res
  end
  
end
