module	Diurnal
	def baskInTheSun say
		return "Lion.baskInTheSun = " << say
	end
end

class Animal
	def makeSound sound
		return "Lion.makeSound = " << sound

	end
	
	def self.sleep
		puts "Animal.sleep = About to go to sleep."
	end
end

class Lion < Animal
	include Diurnal

end


lion = Lion.new
puts lion.makeSound gets
puts lion.baskInTheSun gets
Animal.sleep