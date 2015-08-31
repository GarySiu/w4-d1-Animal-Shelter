class Shelter
  def initialize(name)
    @name = name
    @clients = []
    @housed_pets = []
    @adoptable_pets = []
  end
  attr_reader :name
  attr_accessor :clients, :housed_pets, :adoptable_pets

  def add_client(client_name, client_gender, client_age)
    clients << Client.new(client_name, client_gender, client_age)
  end

  def add_pet(pet_owner, pet_name, pet_breed, pet_age, pet_gender, pet_toys)
    housed_pets << Animal.new(pet_owner, pet_name, pet_breed, pet_age, pet_gender, pet_toys)
  end
end