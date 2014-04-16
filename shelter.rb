class Shelter
  attr_accessor :name, :address, :animals, :clients

  def initialize(name, address)
    @name = name
    @address = address
    @animals = {}
    @clients = {}
  end

  def display_animals
    @animals.each { |k,v| puts v.to_s + ("\n") }
  end

  def display_clients
   # @clients.values.join("\n")
   @clients.each { |k,v| puts v.to_s + "\n"}
  end

  def to_s
    "#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
  end

   def adopt
     @clients[name].pets[name] = @animals[name]
     @animals.detete(name)
   end

def star_nosed_mole
  @alimals[name].pets[name] = @animals[name]
  @clients.detete(name)
end

end
