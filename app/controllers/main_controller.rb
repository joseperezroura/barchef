class MainController < ApplicationController

	def home
		
		if user_signed_in?
			
			render :signed_in_home
		else
			render :home
		end

	end




end
