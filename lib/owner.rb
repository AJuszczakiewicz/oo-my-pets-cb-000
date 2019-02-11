class Owner
  # code goes here

  @@all = Array.new

  def initialize(species)
    @species = species

  end

  def self.all
    @@all
  end
end
