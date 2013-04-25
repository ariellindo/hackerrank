def  partition ar
	# qar = ar.split(' ') unless ar.class == String
	pivot = ar[0].to_i
	left = []
	right = []
	equal = []

	
	0.upto(ar.length - 1) do |n|
		if ar[n].to_i < pivot
			left.push(ar[n].to_i)

		elsif ar[n].to_i == pivot
			equal.push(ar[n].to_i)

		else
			right.push(ar[n].to_i)
		end
	end

	puts ""
	arr = left + equal + right
	puts arr.join(' ')

end

arr = "5 8 1 3 7 9 2"

# arr = "2741 2479 5047 4182 8388 5043 9991 3293 7658 3816 9678 2077 534 2101 9663 6788 7431 7799 189 6826 7428 5323 1518 7031 9731"
partition arr.split(' ')

