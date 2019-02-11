require_relative './pet'
class Pet
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end


class Dog < Pet
  # code goes here
  def initialize(name)
    super(name)
  end
end
