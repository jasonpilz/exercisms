module BookKeeping
  VERSION = 4
end

class Squares
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    natural_nums.sum**2
  end

  def sum_of_squares
    natural_nums.map { |num| num**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def natural_nums
    [*1..num]
  end
end
