class Ferret

  attr_accessor :name

  def initialize(name = "no name")
    @name = "a ferret has #{name}"
  end

  def give_name(name)
    @name = "a ferret's name is #{name}"

  end
end
