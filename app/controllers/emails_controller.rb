class EmailsController < ApplicationController


	def new
		@email = Email.new
	end

	def create
		@email = Email.new(params.require(:email).permit(:name, :address, :owner, :players_wanted => [], :players_offered => []))

		if @email.save
			Trade.offer(@email).deliver # Sends a welcome email to new students!
			redirect_to :back # Sends the user back to whichever page they were on
		else
			render 'emailform'
		end

	end


end
