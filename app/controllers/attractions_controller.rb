class AttractionsController < ApplicationController
  def index
    @attractions = policy_scope(Attraction).order(created_at: :desc)
  end
end
