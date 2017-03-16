# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    (1..n).map { |x|
        if x % 15 == 0
            "FizzBuzz"
        elsif x % 5 == 0
            "Buzz"
        elsif x % 3 == 0
            "Fizz"
        else
            x.to_s
        end
    }
end
