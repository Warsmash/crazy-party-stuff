class ReviewsController < ApplicationController
  def create
    @attraction = Attraction.find(params[:attraction_id])
    @review = Review.new(review_params)
    @review.attraction = @attraction
    authorize @review
    respond_to do |format|
      if @review.save
        format.html {redirect_to attraction_path(@attraction,
        anchor: "review-#{@review.id}") }
        format.json
      else
        format.html {render 'attractions/show'}
        format.json
      end
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
