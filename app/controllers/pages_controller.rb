class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @attractions = Attraction.all.sample(6)
  end
end
