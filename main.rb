require_relative 'animals'
require_relative 'clients'
require_relative 'shelters'

shelter = Shelter.new('Animal Hospital')

## TEST VALUES ##
# client = Client.new('Bob','m')
# puts "Our client is named #{client.name} and they are #{client.gender}"

# animal = Animal.new('Spot','Dalmatian')
# puts "There is a pet named #{animal.name} and they are are #{animal.breed}"

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