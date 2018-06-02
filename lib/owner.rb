class Owner
  attr_accessor :name, :pets

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    self.all.push(self)
  end

  def add_pet(pet)
    self.pets.push(pet)
  end

  def buy_pet(species, name)
    if species == "cat"
      cat = Cat.new(name)
      self.pets.push(cat)
      
    elsif species == "dog"
      dog = Dog.new(name)
      self.pets.push(dog)
      
    elsif species == "fish"
      fish = Fish.new(name)
      self.pets.push(fish)
      
      
    end
  
    cat = Cat.new(name)
    self.pets.push(cat)
  end
end
