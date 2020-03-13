class TrickOrTreater

  attr_accessor :dressed_up_as, :costume, :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def bag
    @bag
  end

  def dressed_up_as
    @costume.style
  end

  def empty?
    return true if @bag == []
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    return @bag.count
  end

  def eat
    bag.candies.pop
  end

end
