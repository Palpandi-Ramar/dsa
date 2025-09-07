#Input: 
  nums = [10,2]
#Output: "210"
def largest_number(nums)
 result = nums.map(&:to_s).sort {|a,b| b + a <=>   a + b }.join
 result[0] == "0" ? result[0] : result
end

p largest_number(nums)