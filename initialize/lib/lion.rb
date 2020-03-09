class Lion

  attr_accessor :name, :sound

  def initialize(name)
    @name = name.values[0]
    @sound = name.values[1]
  end

end
