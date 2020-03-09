class Rabbit

  attr_accessor :name, :num_syllables

  def initialize(name)
    if name.values[0] == "Rita"
      @name = "Rita Rabbit"
    else
      @name = name.values[0]
    end
    @num_syllables = name.values[1]
  end

end
