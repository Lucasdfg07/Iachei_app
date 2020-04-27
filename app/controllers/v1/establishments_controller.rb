class V1::EstablishmentsController < V1::ApplicationController
  before_action :set_establishment, only: [:show]
  before_action :set_user, only: [:all_user_establishments]

  def show
  end

  def all_user_establishments
    @establishments = @user.establishments
  end

  private

  def set_establishment
    @establishment = Establishment.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
