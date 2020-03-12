class Medusa

  attr_reader :name, :statues, :victims

  def initialize(name)
    @name = name
    @statues = []
    @victims = 0
  end

  def empty?
    return true if @statues == []
  end

  def stare(victim)
    if @victims < 3
      @victims += 1
      victim.is_stoned
      @statues << victim
    else
      @statues << victim
      @statues[0].reset_stoned
      @statues.delete_at(0)
    end
    victim.is_stoned
  end

  def count_of_stoned
    @statues.count
  end

end

class Person

  attr_reader :stoned, :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def reset_stoned
    @stoned = false
  end

  def is_stoned
    @stoned = true
  end

end
