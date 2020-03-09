class Monkey

  attr_accessor :name, :type, :favorite_food

  def initialize(name)
    @name = name[0]
    @type = name[1]
    @favorite_food = name[2]
  end

end
