class Wizard

  attr_accessor :name, :bearded, :incantation

  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
    @tired = false
    @rested = true
    @getting_tired = 0
  end

  def bearded?
    return true if @bearded == true
    return false if @bearded.values[0] == false
  end

  def incantation(string)
    return "sudo " + string
  end

  def rested?
    if @getting_tired >= 3
      @rested = false
    end
    @rested
  end

  def cast
    @getting_tired += 1
    @cast = "MAGIC MISSILE!"
  end

end
