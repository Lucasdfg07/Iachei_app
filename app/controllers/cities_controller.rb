class CitiesController < ApplicationController
  before_action :set_city, only: [:show]

  def index
    @q = City.ransack(params[:q])
    @cities = @q.result(distinct: true).order(name: :ASC)
  end

  def show
  end

  private

    def set_city
      @city = City.find(params[:id])
    end
end
