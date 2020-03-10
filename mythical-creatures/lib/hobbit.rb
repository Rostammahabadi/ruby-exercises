class Hobbit

  attr_accessor :name, :disposition, :age

  def initialize(name, disposition = "homebody", age = 0)
    @name = name
    @disposition = disposition
    @age = age
  end

  def celebrate_birthday
    @age += 1
    @age
  end

  def adult?
    return true if @age >= 33
    return false if @age <= 32
  end

  def old?
    return true if @age >= 101
    return false if @age <= 100
  end

  def has_ring?
    return true if @name == "Frodo"
    return false if @name == "Sam"
  end

  def is_short?
    true
  end

end
