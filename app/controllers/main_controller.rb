class MainController < ApplicationController
	def home		
		if user_signed_in?			
			@user = User.first(6)
			render :signed_in_home
		else
			render :home
		end
	end

	def user_profile

			# @user = User.id
		render :user_profile
	end


end
