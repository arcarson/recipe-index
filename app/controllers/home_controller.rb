class HomeController < ApplicationController
  def index
    @recipesSweet = Recipe.where(:catagory => 'sweet')
    @recipesSavoury = Recipe.where(:catagory => 'savoury')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipes }
    end
  end
end
