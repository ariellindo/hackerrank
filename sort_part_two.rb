require 'pry'
# 9 8 6 7 3 5 4 1 2
#------------------
# 8 9 6 7 3 5 4 1 2 
# 6 8 9 7 3 5 4 1 2 
# 6 7 8 9 3 5 4 1 2 
# 3 6 7 8 9 5 4 1 2 
# 3 5 6 7 8 9 4 1 2 
# 3 4 5 6 7 8 9 1 2 
# 1 3 4 5 6 7 8 9 2 
# 1 2 3 4 5 6 7 8 9 

# 1 4 3 5 6 2
#------------
# 1 4 3 5 6 2 
# 1 3 4 5 6 2 
# 1 3 4 5 6 2 
# 1 3 4 5 6 2 
# 1 2 3 4 5 6 

def  insertion_sort(ar) 
	ar.each do |x|
		x_index = ar.find_index(x)
		x1_index = x_index + 1
		puts x

			if ar[ar.find_index(ar.first)] > ar[x_index]
				puts "#{ar[ar.find_index(ar.first)]} > #{ar[x1_index]}"
					varx = ar.fetch(x_index )
					ar.delete_at(x_index )
					ar.insert(ar.find_index(ar.first), varx)
			elsif ar[ar.find_index(ar.first)] < ar[x_index]
				puts "#{ar[ar.find_index(ar.first)]} > #{ar[x1_index]}"
					varx = ar.fetch(x_index)
					ar.delete_at(x_index )
					ar.insert(ar.find_index(ar.first) + 1, varx)
			end

		ar.each { |x| print "#{x} "}
		puts ""
	end
end

insertion_sort [1, 4, 3, 5, 6, 2]
puts ""
insertion_sort [9, 8, 6, 7, 3, 5, 4, 1, 2]