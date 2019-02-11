class Pet
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end


class Cat < Pet
  # code goes here
  def initialize(name)
    super(name)
  end

end
