require 'lib/animal'

class Cat > Animal
	attr_accessor = :food_type

	def initialize(food_type="milk", pet_name, zoo_keeper)
		@food_type = food_type
		super(pet_name, zoo_keeper)
	end	

	def get_diet()
		puts "Cat eats : #{@food_type}"
	end	
end	