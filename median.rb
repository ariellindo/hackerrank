# require 'pry'

class Med
	:number_list
	DEBUG = false

	def median (action)
		actions = action.split(' ')
		puts "action #{actions.inspect}" if DEBUG

		if actions[0] == 'a'
			@number_list.push(actions[1].to_i)
			puts get_median @number_list
		elsif actions[0] == 'r'
			# binding.pry if actions[1].to_i == 100
			num_del = @number_list.index(actions[1].to_i)
			
			if !num_del.nil?
				@number_list.delete_at(num_del) 
				puts (get_median @number_list) if !@number_list.empty?
				puts "Wrong!" if @number_list.empty?
			else
				puts "Wrong!"
			end
		end

	end

	def get_median num_list
		list = num_list.sort
		len = list.length
		puts " sorted - #{list.inspect}" if DEBUG

		if len % 2 != 0
			m = list[(len / 2)]
		else 
			m = (list[(len / 2) - 1] + list[(len / 2)])  / 2.0
			mi = m.to_i
			if mi == m
				mi
			else
				m
			end

			# binding.pry
		end
	end


	def main
		@number_list = []

		file = File.open("input_median01.txt", "rb")
		input = file.read
		input = input.split("\n")

		count = input.length
		# count = gets
		# binding.pry
		0.upto(count.to_i - 1) do |number|
			median input[number]
			# median gets
			puts "-------------------" if DEBUG
			puts "unsorted - #{@number_list.inspect}" if DEBUG
		end
	end
end


med = Med.new
med.main