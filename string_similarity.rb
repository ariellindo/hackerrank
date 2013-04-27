class Simil
	:string_list
	:list_simil

	DEBUG = false

	def initialize
		@string_list = []
		@list_simil = []
		@list_simil[0] = 0
	end

	def similar tstring
		puts "strings #{tstring.chomp.inspect}" if DEBUG
		
		ref_str = tstring.chomp
 		str_parsed = parse_string ref_str

 		0.upto(@string_list.length-1) do |line|
 			sum = 0
 			0.upto(@string_list[line].length-1) do |char|

	 			if ref_str[char] == @string_list[line][char]
	 				sum += 1
	 			else
	 				sum += 0
	 				break
	 			end
 				
 			end
 			@list_simil[line] = sum
 		end

 		suma = @list_simil.inject {|sum, x| sum + x}
 		puts suma
	end

	def parse_string str
		len = str.length

		0.upto(len) do |char_less|
			@string_list.push(str[char_less..len-1])
		end

		@string_list.delete("")
		puts @string_list.inspect if DEBUG
		str
	end

	def main
		# t = 1 
		# ts = "ababaa"
		t = gets.to_i
		
		0.upto(t-1) do
			similar gets.to_s
			@string_list = @list_simil = []
		end
	end

end

simil = Simil.new
simil.main