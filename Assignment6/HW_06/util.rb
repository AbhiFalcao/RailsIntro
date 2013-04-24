module Util

  # check's if user has input invalid data

	def user_input_number (guessed_number, set_of_numbers)
      
      begin

        raise ArgumentError if Integer(guessed_number) == nil
        
        raise RangeError if !set_of_numbers.include?(guessed_number.to_i)      

        rescue RangeError
          puts "Number Out Of Range, enter number between #{set_of_numbers.min} to #{set_of_numbers.max}. "          
          true
        rescue ArgumentError
          puts "Not A Valid Integer"
          true
        else
          false  
      end

	end	

end