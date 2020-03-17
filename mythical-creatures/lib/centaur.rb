class Centaur

  attr_reader :name, :breed, :shoot, :run, :cranky, :standing, :rested, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @cranky_counter = 0
    @rested = true
    @sick = false
  end

  def shoot
    cranky_counter
    return "Twang!!!" if @cranky == false && @standing == true
    return "NO!" if @cranky == true || @standing == false
  end

  def run
    cranky_counter
    return "Clop clop clop clop!!!" if @cranky == false && @standing == true
    return "NO!" if @cranky == true || @standing == false
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def cranky_counter
    @cranky_counter += 1
    @cranky = true if @cranky_counter == 3
  end

  def sleep
    return "NO!" if @standing == true
    reset_cranky if @standing == false
  end

  def lay_down
    @standing = false
  end

  def laying?
    return true if @standing == false
  end

  def stand_up
    @standing = true
  end

  def reset_cranky
    @cranky = false
  end

  def drink_potion
    @sick = true if @rested == true
    @rested = true if @standing == true
    return false if @standing == false
  end

  def rested?
    @rested
  end

  def is_sick?
    @sick
  end

end
