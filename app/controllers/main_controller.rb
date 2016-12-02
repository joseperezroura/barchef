class MainController < ApplicationController
	before_action :authenticate_user!, :except => [:home]



	def home		
		if user_signed_in?			
			@user = User.first(6)
			render :signed_in_home
		else
			render :home
		end
	end


end










	# def user_profile
	# 	@the_user = User.find(params[:id])
	# 		# @user = User.id
	# 	render :user_profile
	# end
