class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_city, only: [:update_user_city, :show, :edit, :update, :destroy]


  def index
    @q = City.ransack(params[:q])
    @cities = @q.result(distinct: true).order(name: :ASC)
  end


  def show
  end


  def new
    @city = City.new
  end


  def edit
  end


  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'Cidade criada com sucesso!' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_user_city
    # Only Client or Shopkeeper
    current_user.set_city(@city)

    redirect_to establishments_path, notice: 'Cidade Selecionada com sucesso!'
  end

  def update
    # Only Admin
    if @city.update(city_params)
      redirect_to cities_path, notice: 'Cidade editada com sucesso!'
    end
  end


  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'Cidade apagada com sucesso!' }
      format.json { head :no_content }
    end
  end

  private

    def set_city
      @city = City.find(params[:id])
    end


    def city_params
      params.require(:city).permit(:name, :description, :photo)
    end
end
