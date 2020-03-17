class Direwolf

  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    @starks_to_protect << stark if @home == stark.location && @starks_to_protect.count != 2
    stark.is_safe
  end

  def hunts_white_walkers?
    true if @starks_to_protect.count == 0
  end

  def leaves(stark)
    stark.is_unsafe
    @starks_to_protect.delete(stark)
    return stark if @starks_to_protect.include?(stark) == false
  end

end


class Stark

  attr_reader :name, :location

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def is_safe
    @safe = true
  end

  def house_words
    return "Winter is Coming" if @name != "Arya"
    return "The North Remembers" if @name == 'Arya'
  end

  def is_unsafe
    @safe = false
  end

end
