class DosesController < ApplicationController

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.save!
    redirect_to cocktail_path(params[:cocktail_id])

  end

  private

  def dose_params
    params.require(:dose).permit(:description, :amount, :ingredient_id)
  end
end
