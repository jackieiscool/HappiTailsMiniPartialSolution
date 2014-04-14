class Client
  attr_accessor :name, :age, :gender, :number_of_children, :pets 
    def initialize(name, age, gender, number_of_children )
      @name = name
      @age = age
      @gender = gender
      @number_of_children = number_of_children
      @pets = {}
     
    end 

    def to_s
        "#{@name} is a #{@age} year old #{@gender} with #{@number_of_children} kids and #{@pets.count} pets"
    end

    def display_pets
      pets_info = ""
      @pets.each { |k, v| pets_info << ((v.to_s) + ("\n")) }
      return pets_info.chomp()
    end

  def display_clients
    @client = Person( "Beth", 30, "female", 3)
  end

 

end
