class WelcomeController < ApplicationController
	def index
		if user_signed_in?
			redirect_to cities_path
		end
	end
end
