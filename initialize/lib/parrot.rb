class Parrot

  attr_accessor :name, :known_words, :sound

  def initialize(name)
    @name = name.values[0]
    @known_words = name.values[1]
    @sound = "Squawk!"
  end

end
