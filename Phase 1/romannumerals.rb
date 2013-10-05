def to_roman(num)
  numbers = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

  roman_numeral_numbers = ""

  numbers.each do |arabic, roman|
    number = num / arabic
    roman_numeral_numbers << roman * number
    num -= arabic * number
  end
  roman_numeral_numbers
end
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(589) == "DLXXXIX"
# TODO: what other cases could you add to ensure your to_roman method is working?
