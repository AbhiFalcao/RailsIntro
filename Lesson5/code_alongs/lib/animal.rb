class Animal
	attr_accessor = :pet_name, :zoo_keeper

	def initialize(pet_name, zoo_keeper) 
		@pet_name = pet_name
		@zoo_keeper = zoo_keeper
	end	

	def get_info
		"#{@pet_name} #{zoo_keeper}"
	end
		
end	

