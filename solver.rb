require_relative './errors'

class Solver
  def factorial(number)
    unless number.instance_of?(Integer) && number >= 0
      raise InvalidArgumentError, 'Argument should be a positive integer.'
    end

    result = 1
    (1..number).each do |n|
      result *= n
    end
    result
  end

  def reverse(word)
    raise InvalidArgumentError, 'Argument should be a string.' unless word.instance_of?(String)

    word.reverse
  end

  def fizzbuzz(number)
    raise InvalidArgumentError, 'Argument should be an integer.' unless number.instance_of?(Integer)

    result = ''

    result += 'fizz' if (number % 3).zero?
    result += 'buzz' if (number % 5).zero?
    return number.to_s if result == ''

    result
  end
end
