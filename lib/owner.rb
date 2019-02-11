class Owner
  # code goes here
  attr_reader :species, :pets
  attr_accessor :name
  @@all = Array.new

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
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


  def buy_fish(fish_name)
    @pets[:fishes].push(Fish.new(fish_name))
  end
end
