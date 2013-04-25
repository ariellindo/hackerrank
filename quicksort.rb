require 'pry'

def  partition ar
	ar = convert_to_array(ar)

	if ar.length > 1
		
		pivot = ar[0].to_i
		left ||= []
		right ||= []
		equal ||= []

		ar.each_with_index do |n_value, index|
			if n_value.to_i < pivot
				left.push(n_value.to_i)
			end
			if n_value.to_i == pivot
				equal.push(n_value.to_i)
			end
			if n_value.to_i > pivot
				right.push(n_value.to_i)
			end

			if index == ar.length - 1
				temp_L = partition left if left.length > 1
				left = temp_L unless temp_L.nil?

				temp_R = partition right if right.length > 1
				right = temp_R unless temp_R.nil?

				puts (left + equal + right).join(' ')
			end
		end
		
		return ar = left + equal + right
	end
end

def convert_to_array(arr)
	if arr.class == String
		arr = arr.split(' ')
		arr.delete_at(0)
		arr
	else
		arr
	end
end

arr = gets
arr += gets

partition arr

