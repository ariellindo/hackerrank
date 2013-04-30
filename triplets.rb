require 'pry'

class Triplets
	:triples
	:n_count
	:num_list

	def initialize
		@triples = []
		@n_count = 0
		@num_list = []
	end

	def get_triplet ar

		@num_list = ar.split(' ')
		@n_count = @num_list.shift.to_i

		puts "n #{@n_count}, array #{@num_list.inspect}"	

	end


	def main
		line_one = "   10   "
		line_two = "   1 1 5 4 3 6 6 5 9 10    "
		get_triplet line_one.strip + " " + line_two.strip
		
	end
end

triplet = Triplets.new
triplet.main