module Api
  class RecipesController < ApplicationController

    before_action :set_recipe, only: [:update, :destroy]

    def show
      render json: Recipe.all
    end

    def create
      @recipe = Recipe.create!(recipe_params)
    end

    def update
      @recipe.update(recipe_params)
      head :no_content
    end

    def destroy
      @recipe.destroy
      head :no_content
    end

    def recipe_params
      params.permit(
          :name,
          :plant,
          :daytime, :daytime_start,
          :temperature_day, :temperature_night,
          :light_intensity, :light_wavelength400500, :light_wavelength500600, :light_wavelength600700, :light_wavelength700800,
          :water_flowrate, :water_pressure, :water_interval, :water_cycletime, :water_ph, :water_nozzle,
          :ventilation_rpm, :ventilation_interval, :ventilation_cycletime, :ventilation_daytimeonly,
          :co2_concentration
      )
    end

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
  end
end

