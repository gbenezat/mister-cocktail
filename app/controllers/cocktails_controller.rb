class CocktailsController < ApplicationController

  before_action :set_cocktails, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
    @dose = Dose.new
  end

  def create
    cocktail = Cocktail.new(params_cocktail)
    cocktail.save
    redirect_to cocktails_path
  end

  private

  def set_cocktails
    @cocktail = Cocktail.find(params[:id])
  end

  def params_cocktail
    params.require(:cocktail).permit(:name)
  end

end
