class AttractionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

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
      redirect_to attraction_path(@attraction)
    else
      render :new
    end
  end

  def show
    @attraction = Attraction.find(params[:id])
    @booking = Booking.new
  end

  private

  def set_attraction
    @attraction = Attraction.find(params[:id])
  end

  def destroy
    @attraction = Attraction.find(params[:id])
    @attraction.destroy
  end

  def attraction_params
    params.require(:attraction).permit(:name, :one_liner, :description, :photo)
  end
end
