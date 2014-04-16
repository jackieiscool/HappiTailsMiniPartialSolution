 require 'pry'
# require 'rainbow'
require_relative 'data'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
#for a line of *****
puts "*"*80


#Welcome line
puts "WELCOME TO HAPPI TAILS (WOOF WOOF) " + "WHAT ARE YOU LOOKING FOR?"

#Questions to be asked!
puts "\n TYPE:
  
       (spidermonkey)  for a list of our finest exoctic animals\n 
       (narwhal)  for a list our fabulous clients\n 
       (aye-aye) to create a wild animal\n  
       (dumbo-octopus) Would you like to become one of our fabulous clients\n 
       (sucker-footed-bat) if you would like to adopt an animal\n
       (star-nosed-mole) If you would like to return the pet you just bought\n
       (blobfish)  if you want to quit.. (loser) \n"
       puts "*"*80 
       response = gets.chomp.downcase

    #(blobfish) to quit
    while response != 'blobfish'

case response
   # (spidermonkey) to list animals
    when "spidermonkey"
    $shelter.display_animals

   #(narwhal) to display clients
    when "narwhal"
    $shelter.display_clients

  #(aye-aye)to create an animal
    when "aye-aye"
      puts "Enter a name"
      name = gets.chomp
      puts "Enter an age"
      age = gets.chomp
      puts "what is it's gender?"
      gender = gets.chomp
      puts "What is the species?"
      species = gets.chomp
      new_animal = Animal.new(name, age, gender, species)
      $shelter.animals[name] = new_animal
  
   #(dumbo-octopus)to create a client
    when  "dumbo-octopus"
      puts "Enter your wonderful name??"
      name = gets.chomp
      puts "So how old are you?.. Now dont lie!"
      age = gets.chomp
      puts "Are you male or female?"
      gender = gets.chomp
      puts "How many kids do you have?"
      number_of_children = gets.chomp
      puts "Do you have any exoctic animals? Or boring Pets?"
      pets = gets.chomp()
      new_client = Client.new(name, age, gender, number_of_children)
      $shelter.clients[name] = new_client

     #(sucker-footed-bat)if you would like to adopt an animal
    when "sucker-footed-bat"
        
    puts "what client wants to adopt?"
    client_adopt = gets.chomp
    puts "What pet will be adopted?"
    pet_adopt = gets.chomp
      $shelter.clients[client_adopt].pets[pet_adopt]=$shelter.animals[pet_adopt]
      puts "Shelter clients: #{$shelter.clients[client_adopt]}"
      # puts "Shelter pets: #{$shelter.clients[client_adopt].pets[pet_adopt]}"
      $shelter.animals.delete(pet_adopt)
      #puts "Shelter animals: #{$shelter.animals}"


    #  $shelter.display_animals
    #  puts "Which one would you like to adopt?"
    #  adopt = gets.chomp.downcase
    #  puts "#{adopt } What a great choice!"
    #def adopt
    # @pets[animal_name] = @animals[name]
    # @animals.detete(name)
    #end

   # (star-nosed-mole) For returning your pet.
   when "star-nosed-mole"
    puts "Are you sure??? How could you give up such a wonderful gift like a pet?"    
    puts "Ok then What type of exoctic Animal is it?"
    species = gets.chomp
    puts "What is it's wild name? That is if you botherd to name it.."
    name = gets.chomp
    puts "  how old is #{name}?"
    age = gets.chomp
    puts "Its not so cute now!"
    puts "what gender is it?"
    puts "Now go away!"
    new_animal = Animal.new(name, age, gender, species)
      $shelter.animals[name] = new_animal

  end 


# We start all over again with these badass questions!!
puts "*"*80 
puts "WELCOME BACK TO HAPPI TAILS (WOOF WOOF) WHAT ARE YOU LOOKING FOR?"
puts "
       (spidermonkey)  for a list of our finest exoctic animals\n 
       (narwhal)  for a list our fabulous clients\n 
       (aye-aye) to create an wild animal\n  
       (dumbo-octopus) Would you like to become one of out fabulous client\n 
       (sucker-footed-bat) if you would like to adopt an animal\n
       (star-nosed-mole) If you would like to return the pet you just bought\n
       (blobfish)  if you want to quit..(loser)"


       puts "*"*80 
       response = gets.chomp.downcase

end
