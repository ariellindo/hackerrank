def insertion_sort(ar)
	v = ar.last
	ar.reverse_each do |x|
		x_index = ar.find_index(x)

		ar[x_index] = ar[x_index-1]	
		ar[x_index] = v if x_index-1 < 0 || ar[x_index] < v

		return if x < v

	  ar.each {|x| print "#{x} "}
	  puts ""
	end
end

insertion_sort [2,4,6,8,0]
puts ""
insertion_sort [2,4,6,8,3]
