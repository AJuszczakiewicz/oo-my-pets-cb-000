class Pet
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end


class Fish < Pet
  def initialize(name)
    super(name)
  end
end
