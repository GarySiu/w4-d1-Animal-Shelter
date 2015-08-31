class Shelter
  def initialize(name)
    @name = name
    @clients = []
  end
  attr_reader :name
  attr_accessor :clients

  def add_client(client_name, client_gender, client_age)
    clients << Client.new(client_name, client_gender, client_age)
  end
end