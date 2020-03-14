class Retirement
  attr_reader :year, :years_left

  def initialize()
    @current_year = 2015
    @years_left
  end

  def calculate(start_work, retirement_age)
    @years_left = retirement_age - start_work
    @retirement_year = (retirement_age - start_work) + @current_year
    if start_work >= 0 && retirement_age >= 0
      return "You have " + @years_left.to_s + " years left until you can retire. It is " + @current_year.to_s + ", so you can retire in " + @retirement_year.to_s + "."
    else
      return "Error. Age cannot be negative."
    end

  end

end
