class PokerController < ApplicationController
	def index
		@cards = (0..51).to_a.shuffle()
		face = ["club", "spade", "heart","diamond"]
		i = 0
		num = 5
		@hand = Hash.new
		while i < num do
			card = @cards[i]
			@hand[i] = face[card/13] + (card%13 + 1).to_s
			i += 1
		end
	end
end