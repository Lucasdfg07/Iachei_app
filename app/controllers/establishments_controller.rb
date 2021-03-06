class EstablishmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :current_user_establishments, :category]
  before_action :set_establishment, only: [:update_rating, :show, :edit, :update, :destroy]
  before_action :set_category, only: [:category]

  def index
    if user_signed_in?
      @q = current_user.city.establishments
          .order(name: :ASC).ransack(params[:q])
      @establishments = @q.result(distinct: true)
    else
      @city = City.find(params[:city_id].to_i)

      @q = @city.establishments
          .order(name: :ASC).ransack(params[:q])
          
      @establishments = @q.result(distinct: true)
    end

    @categories = Category.all.page(params[:page])
  end


  def show
  end


  def new
    redirect_to establishments_path if current_user.client?
    @establishment = Establishment.new
  end


  def edit
  end

  def category
    if user_signed_in?
      @establishments = current_user.city.establishments.where(category: @category)
    else
      @city = City.find(params[:city_id].to_i)
      @establishments = @city.establishments.where(category: @category)
    end
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

      if !EstablishmentCity.where(establishment: establishment)
                           .find_by(city: city).present?
                           
        new_stablishment(@city, establishment)
      end
    end
  end

  def update_establishment_city(establishment)
    @cities = params[:establishment][:cities].drop(1)

    # destroy Establishments present into EstablishmentCity relation and different of establishment
    @establishments = EstablishmentCity.where(establishment: establishment)
                                       .where.not(city: @cities)

    @establishments.destroy_all

    set_establishment_city(establishment)
  end

  def new_stablishment(city, establishment)
      @establishment_city = EstablishmentCity.new
      @establishment_city.set_new_establishment(city, establishment)
      @establishment_city.save
  end


  def update
    if @establishment.update(establishment_params)

      # Mantain current city and it's addresses and add or remove the others included or excluded
      if params[:establishment][:cities].present?
        update_establishment_city(@establishment)
      end

      redirect_to @establishment, notice: 'Establishment was successfully updated.'
    else
      redirect_to @establishment, alert: 'Erro na atualização do estabelecimento.'
    end
  end


  def update_rating
    @rating = params[:establishment][:rating]

    # Set rating
    @establishment.set_rating(@rating)
    redirect_to request.referrer, notice: 'Avaliação realizada com sucesso!'
  end

  def destroy
    @establishment.destroy
    respond_to do |format|
      format.html { redirect_to current_user_establishments_establishments_path, notice: 'Establishment was successfully destroyed.' }
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
      params.require(:establishment).permit(:category_id, :name, :description, :additional_information, :rating, :telephone, :facebook, :instagram, :whatsapp, :website, :photo)
    end
end
