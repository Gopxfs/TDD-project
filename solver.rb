class Solver
  def factorial(number)
    result = 1
    (1..number).each do |n|
      result *= n
    end
    result
  end
end