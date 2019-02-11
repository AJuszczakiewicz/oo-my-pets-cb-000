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
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs]
  end

end
