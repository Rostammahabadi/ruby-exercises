class Werewolf

  attr_reader :name, :location, :human, :hungry, :victims
  attr_writer :change_status
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hunry = false
    @victims = []
  end

  def human?
    @human
  end

  def change!
    if @human == true
      @human = false
      @hungry = true
    else
      @human = true
    end
  end

  def wolf?
    return @human == false
  end

  def is_hungry?
    @hungry
  end

  def consume(victim)
    if @human == false
      @victims << victim
      @hungry = false
      victim.status = :dead
      return true
    else
      return false
    end
  end

end

class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end

end
