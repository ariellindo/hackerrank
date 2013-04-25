def  insertionSort(gets gets) 
	shifts = 0
	arr = ar
	arr = ar.split(' ') if ar.class == String

	arr.each_with_index do |x, index|
		i = index

		index.downto(1) do |n|
			if x.to_i < arr[n].to_i
				arr[i] = arr[n].to_i
				i = n;
				shifts += 1
			end
		end
		arr[i] = x.to_i
	end
	puts shifts
end

arr = gets
arr += gets

insertionSort arr

