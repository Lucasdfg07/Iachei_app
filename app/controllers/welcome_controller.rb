class WelcomeController < ApplicationController
	def index
	end

	def set_user_role
		current_user.set_role(params[:role])

		redirect_to cities_path
	end
end
