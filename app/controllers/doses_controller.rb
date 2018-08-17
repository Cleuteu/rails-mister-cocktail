class DosesController < ApplicationController

  def create
    @doses = Dose.all
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    @cocktail = Cocktail.find(@dose.cocktail_id)
    redirect_to cocktail_path(@cocktail.id)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :amount, :ingredient_id)
  end
end
