class UsersController < ApplicationController




def show
	@user = User.find(params[:id])
	@recipes = @user.recipes
	@followees = @user.followees(User)
	@followers = @user.followers(User)

	render :show
end




end
