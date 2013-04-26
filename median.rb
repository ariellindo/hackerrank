# require 'pry'

class Med
	:number_list

	def median (action)
		actions = action.split(' ')

		add_or_remove = actions[0]
		number = actions[1].to_i

		if add_or_remove == 'a'
			@number_list.push(number)
			puts get_median @number_list if @number_list.length >= 1
		elsif add_or_remove == 'r' && @number_list.last == number || !@number_list.empty?
			@number_list.pop
			puts (get_median @number_list) if @number_list.length >= 1
			puts "Wrong!" if @number_list.length == 0
		else 
			puts "Wrong!"
		end

		# puts @number_list.inspect
	end

	def get_median num_list
		list = num_list.sort
		# puts list.inspect
			# binding.pry
		return list.first if list.length < 2

		# if even and more than 2
		if list.length % 2 == 0 && list.length > 2
			index = list.length / 2
			m = (list[index -1 ] + list[index + 1]) / 2.0

		# if even and 2 in the list
		elsif list.length % 2 == 0 && list.length == 2
			# binding.pry
			m = (list[0] + list[1]) / 2.0 

		# if odd median is middle
		elsif list.length % 2 != 0 
			index = (list.length / 2).ceil
			m = list[index]
		end
	end


	def main
		@number_list = []
		count = gets
		0.upto(count.to_i - 1) do |number|
			median gets
		end
	end
end

med = Med.new
med.main