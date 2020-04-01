class AddressesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  before_action :set_establishment, only: [:new, :create, :edit, :update]


  def index
    @addresses = Address.all
  end

  def show
  end

  def new
    @address = Address.new
  end

  def edit
  end


  def create
    @address = Address.new(address_params)

    @establishment_city = EstablishmentCity.find_by(city: params[:address][:establishment_city], establishment: @establishment)
    @address.establishment_city = @establishment_city

    respond_to do |format|
      if @address.save
        format.html { redirect_to establishment_path(@establishment), notice: 'Address was successfully created.' }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    if @address.update(address_params)
      redirect_to establishment_path(@establishment), notice: 'Address was successfully updated.' 
    else
      redirect_to request.referrer, alert: 'Erro na atualização do endereço.' 
    end
  end


  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Endereço excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

    def set_address
      @address = Address.find(params[:id])
    end

    def set_establishment
      @establishment = Establishment.find(params[:establishment])
    end


    def address_params
      params.require(:address).permit(:street, :neighborhood, :number, :cep)
    end
end
