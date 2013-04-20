class DiceController < ApplicationController
	def index
	end
	def roll
		@dice1 = rand(6) + 1
		@dice2 = rand(6) + 1
		win = [7,11]
		lose = [2,3,12]
		@total = @dice1 + @dice2
		@last = params[:point].to_i if params[:point].present?
		@is_win = false
		@is_lose = false
		if @last.present?
			if @total == @last
				@is_win = true
			elsif @total == 7
				@is_lose = true
			end
		else
			if win.index(@total) != nil
				@is_win = true
			elsif lose.index(@total) != nil
				@is_lose = true
			else
				@last = @total
			end
		end
		render "dice_roll"
	end
end