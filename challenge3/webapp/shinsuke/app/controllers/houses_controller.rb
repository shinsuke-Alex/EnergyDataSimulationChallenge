class HousesController < ApplicationController
    before_action :set_house, only: [:show, :edit, :update, :destroy]

  def index
    @houses = House.all
   end

   def show
   end

  def new
    @house = House.new
  end

  def edit
  end



  private

    def set_house
      @house = House.find(params[:id])
    end

    def house_params
      params.require(:house).permit(:firstname, :lastname, :city, :num_of_people, :has_child)
    end

end
