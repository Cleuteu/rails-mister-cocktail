class IngredientsController < ApplicationController

  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

   def show
    # ...
  end
  def edit
    # ...
  end
  def update
    # ...
  end
  def destroy
    # ...
  end

  private

  def set_restaurant
    @ingredient = Restaurant.find(params[:id])
  end
end
