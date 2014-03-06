require("rspec")
require("calculator")

describe('alpha_calc') do
  it('Adds numbers together from the input') do
    alpha_calc("2 + 2").should(eq([4]))  
  end
  it('Adds strings as if they were numbers') do
    alpha_calc("2 plus 2").should(eq([4])) 
  end
  it('Ignores the arbitrary text irrelevant to computation') do
    alpha_calc("What is 2 plus 2?").should(eq([4])) 
  end
  it('Evaluates multiple computation inquiries') do
    alpha_calc("What is 2 plus 2? What is 4 plus 2?").should(eq([4, 6]git)) 
  end
end
