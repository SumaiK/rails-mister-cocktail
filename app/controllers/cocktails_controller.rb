class CocktailsController < ApplicationController
  # this is for all the methods that share this variable @cocktail = Cocktail.find(params[:id])
  before_action :set_cocktail, only: [:show, :edit]

  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  def show
    @dose = Dose.all
  end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
  end

  # POST /cocktails
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
      params.require(:cocktail).permit(:name)
    end
end
