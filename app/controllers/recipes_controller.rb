class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:recipe_foods).all
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

  def create
    @recipe = Recipe.create(params.require(:recipe).permit(:name, :preparation_time, :cooking_time,
                                                           :description).merge(user_id: current_user.id))

    respond_to do |format|
      format.html do
        if @recipe.save
          redirect_to recipes_path
        else
          redirect_to new_recipe_path
        end
      end
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  # private

  # def recipe_params
  #   params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description)
  # end
end
