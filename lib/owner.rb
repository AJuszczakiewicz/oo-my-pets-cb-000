class Owner
  # code goes here
  attr_reader :species
  @@all = Array.new

  def initialize(species)
    @species = species
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
