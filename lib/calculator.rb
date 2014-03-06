def alpha_calc(word_input)
  operators = {
    "plus" => "+",
    "minus" => "-",
    "subract" => "-",
    "multiply" => "*",
    "divide" => "/"  
  }


word_input.gsub! "?", " ?"
multiple_inquiries = word_input.split("? ")
delete_this = ["What", "is", "?"]
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
    eval((converted_input_array - delete_this).join(" "))
    multiple_answers << eval((converted_input_array - delete_this).join(" "))
  end
multiple_answers

end
puts alpha_calc("What is 2 plus 2? What is 4 plus 4?")
