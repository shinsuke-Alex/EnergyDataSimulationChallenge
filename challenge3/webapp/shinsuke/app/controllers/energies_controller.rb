class EnergiesController < ApplicationController
    before_action :set_energy, only: [:show, :edit, :update, :destroy]

  def index
    @energies = Energy.all
  end

  def show
  end

  def new
    @energy = Energy.new
  end

  def edit
  end


  private
    def set_energy
      @energy = Energy.find(params[:id])
    end

    def energy_params
      params.require(:energy).permit(:label, :house_id, :year, :month, :temperature, :daylight, :energy_production)
    end
end
