# Define Animal as a class
class Animal

  # Set up accessors and mutators for the attributes of an Animal
  # attr_accessor sets up both for you
  attr_accessor :animal_name, :age, :gender, :species, :toys, :pets

  # Used when creating a new animal.
  #   Example:
  #       Animal.new('Timmy', 4, 'male', 'toad')
  def initialize(animal_name, age, gender, species)
        @animal_name = animal_name
        @age = age
        @gender = gender
        @species = species
        @toys = []
        @pets = {}

  end

  # When we display the animal using puts or print, the
  #   to_s method is called to pretty print an Animal
  def to_s
   p "Name :#{@animal_name}. Age: #{@age}. Gender: #{@gender}. Species: #{@species}. Most loved toy: #{toys.join("\n ")}. "

  end
end

