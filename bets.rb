def  getFinalAmount( initialAmount,  betResults) 
	betResults.upcase!

	amount = initialAmount
	nextBet = 1

	betResults.each_char do |bet|
		if bet == 'W'
			amount += nextBet
			nextBet = 1
			# puts amount

		elsif bet == 'L'
			amount -= nextBet
			nextBet *= 2
			# puts amount
		end

		if amount <= nextBet
			puts amount
			return
		end
	end
	puts amount
end

getFinalAmount 100, "LLLWLWWWLLLLLL"