class SumofSubstrings
	def  getEqualSumSubstring( s) 
		total_len = s.length
		long_len = []
		s = s.chomp.split(//).map(&:to_i)

		left = s[0..((s.length-1)/ 2)]
		right = s[((s.length) / 2)..s.length]
		
		left_sum = 0
		right_sum = 0


		0.upto((s.length-1) / 2) do |s_index|
			puts left.inspect
			puts right.inspect
			
			left_sum = left.inject {|sum, x| sum + x}
			right_sum = right.inject {|sum, x| sum + x}

			puts "#{left_sum} == #{right_sum}"
			puts "#{left.length} == #{right.length}"

			if left_sum == right_sum
				puts left.length + right.length
				break
			end

			left.shift
			right.pop	

		end
	end

	def main s
		getEqualSumSubstring (s)

	end
end

sum = SumofSubstrings.new
sum.main "986561517416921217551395112859219257312"
sum.main "123231"