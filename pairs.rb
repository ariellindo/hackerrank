class Pairs
	:num_list
	:n_count
	:k_diff
	:pair_count

	DEBUG = true

	def initialize
		@num_list = []
		@n_count = 0
		@k_diff = 0
		@pair_count = 0
	end

	def get_pairs lines
		@num_list = lines.chomp.split(' ')
		@n_count = @num_list.shift.to_i
		@k_diff = @num_list.shift.to_i

		@num_list.each do |num|
			@num_list.each do |num1|

				if (num.to_i + @k_diff) == num1.to_i
					@pair_count += 1 
					@num_list.shift
					puts @num_list.inspect
					puts "len = #{@num_list.length}"
				else
					@num_list.shift
				end
			end
		end
		@pair_count
	end


	def main

		# file = File.open("input_pairs.txt", "rb")
		# str = file.read
		# puts get_pairs str

		line_one = "5 2" if DEBUG
		line_two = "1 5 3 4 2" if DEBUG
		puts get_pairs line_one + " " + line_two 	

		# line_one = gets
		# line_two = gets
		# puts get_pairs line_one + " " + line_two 	
	end

end

pairs = Pairs.new
pairs.main