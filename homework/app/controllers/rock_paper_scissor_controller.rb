class RockPaperScissorController < ApplicationController
	def index
	end
	def choose
		@choice = ["rock", "paper", "scissors"]
		@comp = @choice[rand(3)]
		@user = params[:choose]
		if @comp == @user
			@message = "It's Tie!"
		elsif @comp == "rock"
			if @user == "paper" 
				@message = "You Win!"
			else
				@message = "You Lose!"
			end
		elsif @comp == "paper"
			if @user == "scissors" 
				@message = "You Win!"
			else
				@message = "You Lose!"
			end
		elsif @comp == "scissors"
			if @user == "rock" 
				@message = "You Win!"
			else
				@message = "You Lose!"
			end
		end
		puts @message
		render "choose"
	end
end