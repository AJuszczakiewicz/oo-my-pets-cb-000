class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name :pets
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

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets

  end
end
