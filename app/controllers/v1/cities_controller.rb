class V1::CitiesController < V1::ApplicationController
  before_action :set_city

  def show
  end

  def establishment_cities
    @city_establishments = @city.establishments
  end

  private

  def set_city
    @city = City.find(params[:id])
  end
end
