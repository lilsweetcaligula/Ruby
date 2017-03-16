def rank_of_element(arr, i)
    indices = (0...arr.size).to_a.sort_by! { |x| arr[x] }  
    lteqcnt = indices.count { |x| x < i && arr[x] <= arr[i] }
    gtcnt   = indices.count { |x| x > i && arr[x] <  arr[i] }
  
    return lteqcnt + gtcnt
end
