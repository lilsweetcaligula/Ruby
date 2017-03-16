# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
    require 'set'
    
    lookup = Set.new(nums)
    
    (1..nums.size).select { |x|
        !lookup.include?(x)
    }
end
