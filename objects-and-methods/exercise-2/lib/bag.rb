class Bag

  attr_reader :empty
  attr_accessor :candies
  def initialize()
    @candies = []
    @empty = true
  end

  def empty?
    @empty
  end

  def count
    return @candies.count
  end

  def <<(candy)
    @candies << candy
    @empty = false
  end

  def contains?(type)
    return true if candies[0].type.include?(type)
  candies.any? do |candy|
    candy.type == type
  end

  def grab
  end

  def type
    candy.type
  end

end

end
