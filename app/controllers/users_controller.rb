class UsersController < ApplicationController




def show
	@user = User.find(params[:id])
	@recipes = @user.recipes
	@followees = @user.followees(User)
	@followers = @user.followers(User)

	render :show
end

def follow

	follower = current_user
	followee = User.find(params[:id])

	follower.follow!(followee)

	redirect_to(:back)


end




end
