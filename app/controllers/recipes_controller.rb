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

	recipe_id = params[:id]
	@recipe = current_user.recipes.find(recipe_id)
	
	render :edit

end

def show

	recipe_id = params[:id].to_i

	@recipe = current_user.recipes.find(recipe_id)
	
	render :show

end

def destroy

	recipe_id = params[:id]

	@recipe = current_user.recipes.find(recipe_id)

	@recipe.destroy

	redirect_to current_user

end

private

	def recipe_params
		params.require(:recipe).permit(:name, :description, :instructions, :avatar)
		# params[:time_entry][:hours]
	end

end