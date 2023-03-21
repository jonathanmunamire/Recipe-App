class FoodsController < ApplicationController
  def index
    @foods = current_user.foods.all
    # @foods = Food.find_by(user: params[:current_user.id])
  end
end
