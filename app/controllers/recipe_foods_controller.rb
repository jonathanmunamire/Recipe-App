class RecipeFoodsController < ApplicationController
  def index
    @food_recipes = RecipeFood.all
    puts "Recipe food __________ #{RecipeFood}"
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    puts "This is new action_____ #{Recipe.new}"
    @food_recipe = RecipeFood.new
  end

  def show
  end

  def create
  end
end
