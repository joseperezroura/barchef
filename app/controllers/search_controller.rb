class SearchController < ApplicationController

def index
  @user = User.search(params[:search])
  @recipe = Recipe.search(params[:search])
end





end
