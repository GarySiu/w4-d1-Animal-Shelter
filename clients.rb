class Client
  def initialize(name, gender)
    @name = name
    @gender = gender
    @age = 0
    @pets = []
  end
  attr_reader :name, :gender
  attr_accessor :age, :pets
end