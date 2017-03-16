def triangle_area(a, b, c)
  p = triangle_perim(a, b, c) / 2.0
  Math.sqrt(p * (p - a) * (p - b) * (p - c))
end

def triangle_perim(a, b, c)
  [a, b, c].reduce(:+)
end

def equable_triangle(a, b, c, delta=1e-7)  
  area  = triangle_area(a, b, c)
  perim = triangle_perim(a, b, c)
  
  (area - perim).abs <= delta
  
  rescue Math::DomainError
    false
end
