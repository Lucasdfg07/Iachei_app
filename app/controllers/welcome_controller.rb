class WelcomeController < ApplicationController
	skip_before_action :authenticate_user!
	
	def index
		if user_signed_in?
			if current_user.city.present? || current_user.admin?
				redirect_to establishments_path
			elsif !current_user.city.present?
				redirect_to cities_path
			end
		end
	end
end
