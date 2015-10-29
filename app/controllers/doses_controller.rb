class DosesController < ApplicationController

before_action :set_doses, only: [:destroy]
before_action :set_cocktail, only: [:destroy]

  # def index
  #   @doses = Dose.all
  # end

  # def show
  # end

  def new
    @dose = Dose.new
  end

  def create
    cocktail = Cocktail.find(params[:cocktail_id])
    dose = cocktail.doses.new(params_doses)
    dose.save
    redirect_to cocktail_path(cocktail)
  end

  def destroy
    @dose.delete
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_doses
    @dose = Dose.find(params[:id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def params_doses
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
