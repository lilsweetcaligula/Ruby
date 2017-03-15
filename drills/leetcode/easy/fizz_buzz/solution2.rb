# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    (1..n).map { |x|
          result = (x % 3 == 0 ? "Fizz" : "") + (x % 5 == 0 ? "Buzz" : "")
          if (result.size == 0) then x.to_s else result end
    }
end
