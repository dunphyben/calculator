def alpha_calc(word_input)
  operators = {
    "plus" => "+", "added" => "+", 
    "minus" => "-", "subract" => "-", "subtracted" => "-", "less" => "-",
    "multiply" => "*", "multiplied" => "*", "times" => "*",
    "divide" => "/", "divided" => "/",
    "exponent" => "**", "power" => "**",
    "square" => "Math.sqrt ",
  }

word_input.downcase!
word_input.gsub! /[?,]/, " ?"
multiple_inquiries = word_input.split("? ")
delete_this = ["what", "is", "?", "and", "by", "to", "the", "of", "root"]
multiple_answers = []

  multiple_inquiries.each do |string_inq|
    converted_input_array = []
    each_string = string_inq.split
    each_string.each do |string|
      if operators.has_key?(string)
          converted_input_array << operators.fetch(string)
      else
          converted_input_array << string
      end
    end
    multiple_answers << eval((converted_input_array - delete_this).join(" "))
  end
multiple_answers

end
puts alpha_calc("What 2 to the power of 2 divided by 2 plus 10, and what is 4 times 4?")
