class Owner
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def add_pet(pet)
    self.pets.push(pet)
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets.push(cat)
  end
end
