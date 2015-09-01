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
    clients[pet_owner].pets += 1
  end

  def move_to_adopt pet_id
    clients[housed_pets[pet_id].owner].pets -= 1
    puts "#{housed_pets[pet_id].name} has been put up for adoption!"
    adoptable_pets << housed_pets.slice!(pet_id)
  end
end