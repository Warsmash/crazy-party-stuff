class ReviewsController < ApplicationController
  def create
    @attraction = Attraction.find(params[:attraction_id])
    @review = Review.new(review_params)
    @review.attraction = @attraction
    if @review.save
      redirect_to attraction_path(@attraction)
    else
      render 'attractions/show'
    end
  end

  def show
    @attraction = Attraction.find(params[:id])
    @review = Review.new  # <-- You need this now.
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
