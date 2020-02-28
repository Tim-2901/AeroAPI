module Api
  class ChambersController < ApplicationController
    before_action :set_chamber, only: [:update, :destroy]

    def show
      render json: Chamber.all
    end

    def create
      @chamber = Chamber.create!(chamber_params)
    end

    def update
      @chamber.update(device_params)
      head :no_content
    end

    def destroy
      @chamber.destroy
      head :no_content
    end

    def chamber_params
      params.permit(:name, :plant, :pressure, :daytime)
    end

    def set_chamber
      @chamber = Chamber.find(params[:id])
    end
  end
end