# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return nil if start > stop

  result = []
  start.upto(stop) do |num|
    result << (if (num % 3).zero? && (num % 5).zero?
                 'FizzBuzz'
               elsif (num % 3).zero?
                 'Fizz'
               elsif (num % 5).zero?
                 'Buzz'
               else
                 num
               end)
  end

  return nil if result.empty?

  result.join(' ')
end
# END
