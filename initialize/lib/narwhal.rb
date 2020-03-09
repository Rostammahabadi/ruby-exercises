class Narwhal

  attr_accessor :name, :weight, :cute

  def initialize(name)
    @name = name.values[2]
    @weight = name.values[1]
    @cute = name.values[0]
  end

  def cute?
    @cute
  end

end
