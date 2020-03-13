class Bag

  attr_reader :candies, :empty
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
  candies.any? do |candy|
    candy.type == type
  end
end
end
