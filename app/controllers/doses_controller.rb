class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:cocktail, :ingredient, :description)
  end
end
