class DosesController < ApplicationController

  # GET /cocktails/new
  def new
    @ingredients = Ingredient.new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  # POST /doses
  def create
    @dose = Dose.create(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(cocktail)
  end

    private

    def dose_params
      params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
    end
end
