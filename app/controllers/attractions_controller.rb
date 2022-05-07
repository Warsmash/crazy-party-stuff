class AttractionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @attractions = policy_scope(Attraction).order(created_at: :desc)
  end

  def new
    @attraction = Attraction.new
    authorize @attraction
  end

  def create
    @attraction = Attraction.new(attraction_params)
    authorize @attraction
    @user = current_user
    @attraction.user = @user
    if @attraction.save
      redirect_to my_attractions_path
    else
      render :new
    end
  end

  def show
    @attraction = Attraction.find(params[:id])
    @booking = Booking.new
  end

  def destroy
    @attraction = Attraction.find(params[:id])
    authorize @attraction
    @attraction.destroy
    flash[:alert] = "Deletion performed"
    redirect_to my_attractions_path
  end

  def user_attractions
    @user = current_user
    @user_attractions = Attraction.where(user: @user)
    authorize @user_attractions
  end

  private

  def set_attraction
    @attraction = Attraction.find(params[:id])
  end


  def attraction_params
    params.require(:attraction).permit(:name, :one_liner, :description)
  end
end
