class Ghostbuster

  def initialize(name)
    @name = name
  end

  def say_my_name
    puts "I'm " + @name
  end

  def get_car
    @car = car
  end

  def ride
    "Vroom Vroom"
  end


end

ghostbuster = Ghostbuster.new("Ray")
ghostbuster.say_my_name
puts ghostbuster.ride
