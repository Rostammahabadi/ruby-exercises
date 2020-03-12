class Direwolf

  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def starks_to_protect
    @starks_to_protect
  end

  def protects(name)
    if name.location == @home && @starks_to_protect.count != 2
      @starks_to_protect << name
      name.safe
    end
  end

  def hunts_white_walkers?
    if @starks_to_protect == []
      true
    else
      false
    end
  end

  def leaves(name)
    if @starks_to_protect.include?(name) == true
      name.left
      @starks_to_protect.delete(name)
    else
      return name
    end
  end

end

class Stark

  attr_reader :name, :location, :safe

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
    @house_words = "Winter is Coming"
  end

  def safe?
      @safe
  end

  def house_words
    if @name == "Arya"
      return 'The North Remembers'
    else
      return @house_words
    end
  end

  def safe
    @safe = true
  end

  def left
    @safe = false
  end

end
