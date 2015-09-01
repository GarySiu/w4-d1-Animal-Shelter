class Animal
  def initialize(owner, name, breed, age, gender, toys)
    @owner = owner
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toys = toys
  end
  attr_reader :name, :breed, :age, :gender
  attr_accessor :owner, :favorite_toys
end