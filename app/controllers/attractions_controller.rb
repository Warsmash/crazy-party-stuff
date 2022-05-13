class AttractionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_attraction, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR one_liner ILIKE :query OR description ILIKE:query"
      @attractions = policy_scope(Attraction).where(sql_query, query: "%#{params[:query]}%")
    else
      @attractions = policy_scope(Attraction).order(created_at: :desc)
    end
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

  def edit
    authorize @attraction
  end

  def update
    authorize @attraction
    @attraction.update(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  private

  def set_attraction
    @attraction = Attraction.find(params[:id])
  end

  def attraction_params
    params.require(:attraction).permit(:name, :one_liner, :price, :description, :photo)
  end
end
