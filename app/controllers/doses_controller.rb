class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = cocktail.find(params[:cocktail_id])
    @dose = Dose.new(params[:id])
  end

  def destroy
    @dose = Dose.destroy(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:ingredient_id)
  end
end
