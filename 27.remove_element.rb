nums = [3, 2, 2, 3]
val = 3

def remove_element(nums, val)
  k = 0
  nums.each_with_index do |n, i|
    if val != n
      nums[k] = n
      k += 1
    end
  end
  k
end

p remove_element(nums, val)