class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:category]

  def index
    @establishments = current_user.city.establishments

    @categories = Category.all
  end


  def show
  end


  def new
    @establishment = Establishment.new
  end


  def edit
  end

  def category
    @establishments = current_user.city.establishments.where(category: @category)
  end

  def current_user_establishments
    @establishments = current_user.establishments
  end 


  def create
    @establishment = Establishment.new(establishment_params)
    @establishment.user = current_user

    set_establishment_city(@establishment)

    respond_to do |format|
      if @establishment.save
        format.html { redirect_to @establishment, notice: 'Estabelecimento criado com sucesso!' }
        format.json { render :show, status: :created, location: @establishment }
      else
        format.html { render :new }
        format.json { render json: @establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def set_establishment_city(establishment)
    # Create Association
    @cities = params[:establishment][:cities]
    
    # First position is blank
    @cities.drop(1).each do |city|
      @city = City.find(city)

      @establishment_city = EstablishmentCity.new
      @establishment_city.set_new_establishment(@city, establishment)
      @establishment_city.save
    end
  end


  def update
    respond_to do |format|
      if @establishment.update(establishment_params)
        format.html { redirect_to @establishment, notice: 'Establishment was successfully updated.' }
        format.json { render :show, status: :ok, location: @establishment }
      else
        format.html { render :edit }
        format.json { render json: @establishment.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @establishment.destroy
    respond_to do |format|
      format.html { redirect_to establishments_url, notice: 'Establishment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def set_establishment
      @establishment = Establishment.find(params[:id])
    end


    def establishment_params
      params.require(:establishment).permit(:category_id, :name, :description, :additional_information, :telephone, :photo)
    end
end
