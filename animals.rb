class Animal
  def initialize(name,breed)
    @name = name
    @breed = breed
    @age = 0
    @gender = ''
    @favorite_toys = ''
  end
  attr_reader :name, :breed
  attr_accessor :age, :gender, :favorite_toys
end