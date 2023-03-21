class FoodsController < ApplicationController
  def index
    @foods = current_user.foods.all
    # @foods = Food.find_by(user: params[:current_user.id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(params.require(:food).permit(:name, :measurement_unit, :price, :quantity).merge(user_id: current_user.id))

    respond_to do |format|
      format.html do
        if @food.save
          redirect_to foods_path
        else
          redirect_to new_food_path
        end
      end
    end
  end
end
