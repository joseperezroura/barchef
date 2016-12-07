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

def update

	recipe_id = params[:id]
	@recipe = current_user.recipes.find(recipe_id)

	if @recipe.update(recipe_params)
		redirect_to user_path(current_user)
	else
		render :edit
	end

end

def show

	recipe_id = params[:id].to_i
	@recipe = Recipe.find(recipe_id)
		

	render :show

end

def destroy

	recipe_id = params[:id]

	@recipe = current_user.recipes.find(recipe_id)

	@recipe.destroy

	redirect_to current_user

end

def like

	
	recipe_id = params[:id].to_i
	likee = Recipe.find(recipe_id)
	current_user.like!(likee)
	redirect_to(:back)

end

def unlike

	
	recipe_id = params[:id].to_i
	likee = Recipe.find(recipe_id)
	current_user.unlike!(likee)
	redirect_to(:back)

end


private

	def recipe_params
		params.require(:recipe).permit(:name, :description, :instructions, :avatar)
		# params[:time_entry][:hours]
	end

end