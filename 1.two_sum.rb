#Input: nums = [2,7,11,15], target = 9
#Output: [0,1]


def two_sum(nums, target)
  h = {}
  nums.each_with_index do |n, i|
    diff = target - n
    if h.key?(diff)
      return [h[diff], i]
    else
      h[n] = i
    end
  end
  []
end

nums = [2,7,11,15]
target = 9
p two_sum(nums, target)