class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail, notice: "New cocktail successfully created"
    else
      render :new, alert: "Your new cocktail couldn't be created"
    end
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
