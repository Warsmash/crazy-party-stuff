class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @attractions = Attraction.all.sample(4)
  end

  def about
  end

  def contact
  end
end
