class Client
  def initialize(name, gender, age)
    @name = name
    @gender = gender
    @age = age
    @pets = []
  end
  attr_reader :name, :gender, :age
  attr_accessor :pets
  def to_s
    "You have registered #{name} (#{gender}/#{age})"
  end
end