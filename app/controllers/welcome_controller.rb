class WelcomeController < ApplicationController
	def index

		if user_signed_in?
			redirect_to superuser_welcome_index_path if current_user.admin?
		end
	end

	def set_user_role
		current_user.set_role(params[:role])

		redirect_to cities_path
	end
end
