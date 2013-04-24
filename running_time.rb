def  insertionSort(ar) 
	shifts = 0
	ar.each_with_index do |x, index|
		i = index

		index.downto(0) do |n|
			if x.to_i < ar[n].to_i
				ar[i] = ar[n].to_i
				i = n;
				shifts += 1
			end
		end
		ar[i] = x.to_i
	end

	$stdout.puts "#{shifts}"
end


insertionSort [2, 1, 3, 1, 2]

