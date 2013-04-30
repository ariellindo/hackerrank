class MissNumber
	def  printMissingInteger( a) 

		ans=[]
		a = a.sort

		0.upto(a.length-1) do |num|
			 	# puts "if #{(num + 1)} == #{a[num + 1]} "
			 if (num + 1) == a[num + 1] 
			   ans[0] = a[num+1]  if a[num] == a[num + 1]
			   ans[1] = num + 2 

			   # puts "#{a[num]} == #{a[num + 1]}" if a[num] == a[num + 1]
			   # puts "#{num + 2}" 
			end
		end 

		puts ans
	end

	def main
 		arr = [73, 88, 52, 98, 40, 7, 43, 18, 46, 63, 5, 89, 70, 6, 26, 11, 28, 4, 16, 80, 55, 60, 42, 91, 67, 64, 48, 77, 92, 57, 93, 8, 32, 97, 69, 9, 7, 31, 44, 15, 49, 78, 58, 37, 94, 51, 68, 25, 59, 22, 83, 13, 1, 95, 36, 96, 47, 20, 45, 34, 85, 84, 53, 35, 62, 29, 10, 75, 24, 72, 41, 38, 65, 82, 66, 86, 87, 100, 99, 76, 33, 30, 21, 17, 79, 2, 19, 23, 71, 61, 3, 56, 12, 50, 74, 90, 81, 14, 27, 39]
 		# arr = [10, 9 , 8, 7, 5, 4, 2, 3, 1, 1]

	  printMissingInteger arr
	end
end

num = MissNumber.new
num.main
