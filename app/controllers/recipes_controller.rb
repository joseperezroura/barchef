class RecipesController < ApplicationController

def new
	@recipe = Recipe.new
	render :new
	# @recipe.save
end

def create



	@recipe = Recipe.new(params[:id])

	# @user = @recipe.recipe_entries.new(user_params)

	# @user.save
			
	
	redirect_to(user_session_path)

	# @recipe = Recipe.create(params[:recipe_id])		
		
	# 	@recipe.save
	# 		render :new
	# 	end
end





	# private
	# def recipe_params
	# 	params.require(:recipe).permit(:name, :description, :instructions)

	# 	# params[:time_entry][:hours]
	# end

end