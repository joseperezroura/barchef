class UsersController < ApplicationController




def show
	@user = User.find(params[:id])
	# current_user.follow!(@user)
	@recipes = @user.recipes
	render :show
end





end
