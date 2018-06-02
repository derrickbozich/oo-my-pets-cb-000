class Owner
  attr_accessor :name, :pets

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all.push(self)

  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def species
    @species = "human"
  end


  def buy_cat(name)
    cat = Cat.new(name)
    self.pets.push(cat)
    cat
  end
end
