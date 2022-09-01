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

  def fizzbuzz(number)
    unless number.class == Integer
      raise InvalidArgumentError, "Argument should be an integer."
    end

    result = ''

    if number%3 == 0
      result += 'fizz'
    end
    if number%5 ==0
      result +='buzz'
    end
    if result == ''
      return number.to_s
    end
    result
  end
end
