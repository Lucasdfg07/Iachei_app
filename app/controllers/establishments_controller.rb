class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: [:show, :edit, :update, :destroy]


  def index
    @establishments = Establishment.all
  end


  def show
  end


  def new
    @establishment = Establishment.new
  end


  def edit
  end


  def create
    @establishment = Establishment.new(establishment_params)
    
    @establishment.city = current_user.city
    @establishment.user = current_user

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

    def set_establishment
      @establishment = Establishment.find(params[:id])
    end


    def establishment_params
      params.permit(:establishment).permit(:name, :description, :aditional_information, :telephone, :photo)
    end
end
