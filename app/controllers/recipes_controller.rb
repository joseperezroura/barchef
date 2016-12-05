class RecipesController < ApplicationController

def new
	@recipe = Recipe.new
	render :new
	# @recipe.save
end

def create
	@recipe = current_user.recipes.new(recipe_params)

	if @recipe.save
		redirect_to user_path(current_user)
	else
		render :new
	end
end

def edit

	
	@recipe = current_user.recipe.find(recipe_params) 
	
	render :edit

end




private
	def recipe_params
		params.require(:recipe).permit(:name, :description, :instructions)
		# params[:time_entry][:hours]
	end
end