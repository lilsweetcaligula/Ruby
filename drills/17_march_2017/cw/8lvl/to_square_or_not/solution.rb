def square_or_square_root(arr)
  arr.collect { |x|
    if x == Math.sqrt(x).floor ** 2
      Math.sqrt(x)
    else
      x ** 2
    end
  }
end
