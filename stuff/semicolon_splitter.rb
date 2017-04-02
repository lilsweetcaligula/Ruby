def split_semicolons(src)
  def compute_ignored_ranges(src, ignore_regex)
    start  = -1
    ignore = []
    
    while m = src.match(ignore_regex, start + 1)
      ignore.push(m.begin(0)...m.end(0))
      start = m.end(0)
    end
    
    ignore
  end
  
  def compute_splits(src, ignore = nil)
    ignore = [] if ignore.nil?
    split  = []
    start  = -1
    
    while m = src.match(/;/, start + 1)
      mindex = m.begin(0)
      
      if ignore.bsearch { |rng| 
          if rng === mindex
            0
          elsif mindex < rng.begin
            -1
          else
            1
          end
        }.nil?
        
        split.push(mindex)
      end
        
      start = m.end(0)
    end
    
    split
  end
  
  ignore = compute_ignored_ranges(src, /".*?"/)
  split  = compute_splits(src, ignore)  
  result = []
  
  ([-1] + split + [src.size]).each_cons(2) do |i, j|
    result.push(src[i + 1...j + 1])
  end
  
  result.map { |line|
    line.strip
  }.join("\n")
end

[
  '',
  'Nothing to split',
  '"Hello;world!"; "Ninja stars." foo; bar; "another string"; baz',
  'foo;bar; baz',
  '"Hello;world!"; "Ninja stars."'
].each do |src|
  puts split_semicolons src
  puts
end
