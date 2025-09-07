
def is_valid(s)
    pairs ={"}"=>"{", ")"=>"(", "]"=>"["}
    stack = [] 
    s.each_char do |ch|
      if pairs.values.include?(ch)
        stack.push(ch)
      elsif pairs.keys.include?(ch)
        return false if stack.empty? || stack.pop != pairs[ch]
      end
    end
    stack.empty?
end

s = "()[]{}"
p is_valid(s)

=begin
  Example 1:

  Input: s = "()"

  Output: true

  Example 2:

  Input: s = "()[]{}"

  Output: true

  Example 3:

  Input: s = "(]"

  Output: false

  Example 4:

  Input: s = "([])"

  Output: true

  Example 5:

  Input: s = "([)]"

  Output: false

=end