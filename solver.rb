require_relative './errors'

class Solver
  def factorial(number)
    unless number.class == Integer && number >= 0
      raise InvalidArgumentError, "Argument should be a positive integer."
    end

    result = 1
    (1..number).each do |n|
      result *= n
    end
    result
  end

  def reverse(word)
    unless word.class == String
      raise InvalidArgumentError, "Argument should be a string."
    end

    word.reverse
  end
end
