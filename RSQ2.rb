module Nocturnal
	def isFullMoon phaseFull
		return "Owl.isFullMoon = " << phaseFull
	end
end

class Animal
	:is_sleep

	def makeSound sound
		return "Owl.makeSound = " << sound
	end

	def sleep
		return "Animal.sleep = About to go to sleep."
	end
end

class Owl < Animal
	include Nocturnal

	def sleep is_sleep 
		return is_sleep = true
	end

	def sleep
		return "Day is here, time to sleep"
	end

	def main
		puts makeSound gets
		puts isFullMoon gets
		puts sleep
	end
end

owl = Owl.new
owl.main
