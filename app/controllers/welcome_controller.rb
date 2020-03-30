class WelcomeController < ApplicationController
	def index

		if user_signed_in?
			if current_user.admin?
				redirect_to superuser_welcome_index_path
			else
				if current_user.city.present?
					redirect_to establishments_path
				end
			end
		end
	end

	def set_user_role
		current_user.set_role(params[:role])

		redirect_to cities_path
	end
end
