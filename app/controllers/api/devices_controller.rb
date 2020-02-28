module Api
  class DevicesController < ApplicationController
    before_action :set_device, only: [:update, :destroy]

    def show
      render json: Device.all
    end

    def create
      @device = Device.create!(recipe_params)
    end

    def update
      @device.update(device_params)
      head :no_content
    end

    def destroy
      @device.destroy
      head :no_content
    end

    def device_params
      params.permit(:model, :pin, :device_type, :location, :issensor, :isactive)
    end

    def set_device
      @device = Device.find(params[:id])
    end
  end
end
