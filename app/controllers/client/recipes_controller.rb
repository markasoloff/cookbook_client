class Client::RecipesController < ApplicationController

  def index
    response = HTTP.get("http://localhost:3000/api/recipes")
    @recipes = response.parse
    render 'index.html.erb'
  end


  def show
    response = HTTP.get("http://localhost:3000/api/recipes/#{params[:id]}")
    @recipe = Recipe.find(params[:id])
    render 'show.html.erb'
  end



end
