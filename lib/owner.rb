class Owner
  attr_accessor :name

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}  
  end

  def add_pet(pet)
    @pets.push(self.pets)
  end
end
