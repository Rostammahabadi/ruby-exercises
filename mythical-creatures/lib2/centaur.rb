class Centaur
  attr_reader :name, :breed, :getting_cranky
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @getting_cranky = 0
    @shoot = "Twang!!!"
    @run = "Clop clop clop clop!!!"
    @sleep = "NO!"
    @is_sick = false
  end

  def shoot
    @getting_cranky += 1
    if @getting_cranky == 3 || @standing == false
      @cranky = true
      @shoot = "NO!"
      @run = "NO!"
      @shoot
    end
    @shoot
  end

  def run
    @getting_cranky += 1
    if @getting_cranky == 3 || @standing == false
      @cranky = true
      @run = "NO!"
      @shoot = "NO!"
      @run
    end
    @run
  end

  def cranky?
    @cranky = true if @getting_cranky == 3
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == false
      @cranky = false
      @sleep = "OK!"
      @getting_cranky = 0
      @shoot = "Twang!!!"
      @run = "Clop clop clop clop!!!"
    else
      @sleep
    end
  end

  def lay_down
    @standing=false
    @standing
  end

  def laying?
    return true if @standing == false
  end

  def stand_up
    @standing = true
    @standing
  end

  def drink_potion
    if @standing == false
    @cranky = false
  elsif @cranky == false
    @is_sick = true
    false
  end
end

  def rested?
    true if @cranky == false
  end

  def is_sick?
    @is_sick
  end
end
