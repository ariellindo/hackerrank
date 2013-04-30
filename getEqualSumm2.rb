class SumofSubstrings
	def  getEqualSumSubstring( s) 
		
		long_len = []
		s = s.chomp.split(//).map(&:to_i)
		left = []
		right = []
		
		left_sum = 0
		right_sum = 0
		spacing = 2


		0.upto(s.length / 2) do |spacing_index|
			spacing += spacing_index

			0.upto(s.length / 2) do |s_index|
				lx = s_index
				ly = s_index + spacing
				rx = ly + 1
				ry = rx + spacing
				left = s[lx..ly]
				right = s[rx..ry]

				break if right.nil?
				break if left.length > right.length

				left_sum = left.inject {|sum, x| sum + x}
				right_sum = right.inject {|sum, x| sum + x}


				# puts "#{left.inspect} and #{right.inspect}"
				# puts "#{left_sum} and #{right_sum}"
				# puts "#{left.length} and #{right.length}"

				if left_sum == right_sum
					# puts "================================== ANSWER"
					long_len << left.length + right.length
				end
			end
		end

		puts long_len.max
	end

	def main s
		getEqualSumSubstring (s)

	end
end

sum = SumofSubstrings.new
sum.main "986561517416921217551395112859219257312"
puts "++++++++++++++++++ 2nd TEST CASE +++++++++++++++++++++++++ "
sum.main "123231"