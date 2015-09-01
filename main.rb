require_relative 'animals'
require_relative 'clients'
require_relative 'shelters'
shelter = Shelter.new('Animal Hospital')

def list_clients shelter
  shelter.clients.each_with_index { |client, index| puts "#{index}: #{client}" }
end

def list_animals shelter
  shelter.housed_pets.each_with_index do |animal, index| 
    puts "#{index}: Name: #{animal.name}  #{animal.gender}/#{animal.age}  Owner: #{shelter.clients[animal.owner].name}  Breed: #{animal.breed}  Likes: #{animal.favorite_toys}"
  end
end

def list_adoptable shelter
  shelter.adoptable_pets.each_with_index do |animal, index| 
    puts "#{index}: Name: #{animal.name}  #{animal.gender}/#{animal.age}  Previous Owner: #{shelter.clients[animal.owner].name}  Breed: #{animal.breed}  Likes: #{animal.favorite_toys}"
  end
end

def menu
  puts `clear`
  puts '*' * 80
  puts "* Welcome to Animal Hospital *".center 78
  puts '*' * 80
  puts '1: Register a new client'
  puts '2: List registered clients'
  puts '3: Register a new animal'
  puts '4: List registered animals'
  puts '5: Give up animal for adoption'
  puts '6: List animals availible for adoption'
  puts 'q: Quit'
  print '--> '
  gets.chomp
end

response = menu

while response.downcase != 'q'
  case response
  when '1' # Register a new client
    puts 'Please enter the client\'s name'
    client_name = gets.chomp
    puts 'Register their gender (m/f)'
    client_gender = gets.upcase.chomp
    puts 'What is their age?'
    client_age = gets.to_i # What do you mean this should be a time object?
    print "You have registered #{client_name} #{client_gender}/#{client_age}"
    shelter.add_client(client_name, client_gender, client_age)
    gets
  when '2' # List registered clients
    puts 'Here are all our clients'
    list_clients(shelter)
    gets
  when '3' # Register a new animal (owner, name, breed, age, gender, toys)
    puts 'Please select the pet\'s owner'
    list_clients(shelter)
    pet_owner = gets.to_i
    puts 'What is the animal\'s name?'
    pet_name = gets.chomp
    puts 'What is the animal\'s breed?'
    pet_breed = gets.chomp
    puts 'Please enter the animal\'s age'
    pet_age = gets.to_i
    puts 'Check the animal\'s gender (m/f)'
    pet_gender = gets.upcase.chomp
    puts 'Finally ask the owner if the pet has any favorite toys'
    pet_toys = gets.chomp
    shelter.add_pet(pet_owner, pet_name, pet_breed, pet_age, pet_gender, pet_toys)
    puts "#{pet_name} has been registered!"
    gets
  when '4' # List registered animals
    puts 'Here are all the temporarily housed animals'
    list_animals(shelter)
    gets
  when '5' # Give up animal for adoption
    puts 'Please select the pet to put up for adoption'
    list_animals(shelter)
    pet_id = gets.to_i
    shelter.move_to_adopt(pet_id)
    gets
  when '6' # List animals availible for adoption
    puts 'Here are all animals up for adoption'
    list_adoptable(shelter)
    gets
  end

  response = menu
end