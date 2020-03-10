class Direwolf

  attr_accessor :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def starks_to_protect
    return @starks_to_protect
  end

  def protects(Stark)
    Stark
  end
end

class Stark

  attr_accessor :name, :location

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
  end

end
