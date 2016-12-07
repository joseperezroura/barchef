class UsersController < ApplicationController




def show
	@user = User.find(params[:id])
	@recipes = @user.recipes
	@followees = @user.followees(User)
	@followers = @user.followers(User)
	@liked_recipes = current_user.likees(Recipe)

	render :show
end

def follow

	follower = current_user
	followee = User.find(params[:id])
	follower.follow!(followee)
	redirect_to(:back)

end

def unfollow

	follower = current_user
	followee = User.find(params[:id])
	follower.unfollow!(followee)
	redirect_to(:back)
end




end
