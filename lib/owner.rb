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

  def say_species
    self.species
    "I am a #{@species}."
  end


  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats].push(cat)
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs].push(dog)
    dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes].push(fish)
    fish
  end

  def play_with_cats
    self.pets[:cats].tap { |c| c.mood = "happy"}
  end

end

dora = Owner.new("Dora")
dora.buy_cat("dinah")
