class Medusa

  attr_accessor :name, :statues

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
      @statues << victim
    else
      @statues << victim
      @statues[0].stoned = false
      @statues.delete_at(0)
    end
    victim.stoned = true
  end

  def count_of_stoned
    @statues.count
  end

end

class Person

  attr_accessor :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
