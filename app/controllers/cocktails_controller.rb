# frozen_string_literal: true

##
# Cockktails Controller
class CocktailsController < ApplicationController
  def root
    redirect_to cocktails_path
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    return render :new unless @cocktail.save

    redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image, :instructions)
  end
end
