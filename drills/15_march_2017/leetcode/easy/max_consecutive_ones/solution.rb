# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    chunks = nums.chunk   { |x| x == 1 }
                 .select  { |is_one, chunk| is_one }
                 .collect { |is_one, chunk| chunk }
                 .max_by  { |chunk| chunk.size }
                 
    if chunks
        chunks.size 
    else 
        0
    end
end
