class UsersController < ApplicationController




def show
	@user = User.find(params[:id])
	@recipes = @user.recipes
	render :show
end

	

end
