class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]


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


  def update
    current_user.update(city: @city)

    if @city.update(city_params)
      redirect_to establishments_path, notice: 'Cidade Selecionada com sucesso!' if current_user.client?

      redirect_to new_establishment_path, notice: 'Cidade Selecionada com sucesso!' if current_user.shopkeeper?

      redirect_to cities_path, notice: 'Cidade editada com sucesso!' if current_user.admin?
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
