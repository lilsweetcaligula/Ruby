# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    nums[0..-1] = nums.reject { |x| x == 0 } + Array.new(nums.count(0)) { 0 }
end
