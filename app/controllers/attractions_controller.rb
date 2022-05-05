class AttractionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    @attractions = policy_scope(Attraction).order(created_at: :desc)
  end
end
