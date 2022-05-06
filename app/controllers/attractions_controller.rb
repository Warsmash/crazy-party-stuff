class AttractionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    @attractions = policy_scope(Attraction).order(created_at: :desc)
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    @user = User.find(params[:user_id])
    @attraction.user = @user
    @attraction.save
  end

  def show
    # @attraction = Attraction.find_by()
  end

  private

  def attraction_params
    params.require(:attraction).permit(:content)
  end
end
