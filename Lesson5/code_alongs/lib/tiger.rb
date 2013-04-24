require 'lib/animal'

class Tiger > Animal
	attr_accessor = :food_type

	def initialize(food_type="meat", pet_name, zoo_keeper)
		@food_type = food_type
		super(pet_name, zoo_keeper)
	end		
end	