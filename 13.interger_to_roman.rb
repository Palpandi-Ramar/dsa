def int_to_roman(num)
  values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  symbols = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]

  res =""
  values.each_with_index do |val, i|
    while num >= val
      num -=val
      res << symbols[i]
    end
  end
  
  res 
end

p int_to_roman(11)  # => "XI"