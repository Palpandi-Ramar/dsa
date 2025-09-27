nums = [3, 2, 2, 3]
val = 3

def remove_element(nums, val)
  k = 0
  nums.each_with_index do |n, i|
    if val != n
      nums[i] = nums[k]
      nums[k] = n
      k += 1
    end
  end
  k
end

length = remove_element(nums, val)

# Fill the remaining elements with '_'
nums_filled = nums[0...length] + ['_'] * (nums.size - length)