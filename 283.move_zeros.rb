nums = [0,1,0,3,12] #Output: [1,3,12,0,0]

def move_zeroes(nums)
  last_non_zero = 0
  nums.each_with_index do |n, i|
    if n != 0
      nums[i], nums[last_non_zero] = nums[last_non_zero], nums[i]
      last_non_zero += 1 
    end
  end
  nums
end

p move_zeroes(nums)