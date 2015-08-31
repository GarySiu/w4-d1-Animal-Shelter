require_relative 'animals'
require_relative 'clients'
require_relative 'shelters'
shelter = Shelter.new('Animal Hospital')

## TEST VALUES ##
# client = Client.new('Bob','m')
# puts "Our client is named #{client.name} and they are #{client.gender}"

# animal = Animal.new('Spot','Dalmatian')
# puts "There is a pet named #{animal.name} and they are are #{animal.breed}"

def list_clients client
  client.clients.each_with_index { |client, index| puts "#{index}: #{client}" }
end


def menu
  puts `clear`
  puts '*' * 52
  puts '* Welcome to Animal Hospital *'.center 50
  puts '*' * 52
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
    puts 'Discretely check their gender (m/f). For reasons.'
    client_gender = gets.upcase.chomp
    puts 'Ask them their age. Maintain eye contact.'
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
    puts 'Check the animal\'s gender'
    pet_gender = gets.upcase.chomp
    puts 'Finally ask the owner if the pet has any favorite toys'
    pet_toys = gets.chomp
    shelter.add_pet(pet_owner, pet_name, pet_breed, pet_age, pet_gender, pet_toys)
    puts "#{pet_name} has been registered!"
    gets
  when '4' # List registered animals
  when '5' # Give up animal for adoption
  when '6' # List animals availible for adoption

  end

  response = menu
end