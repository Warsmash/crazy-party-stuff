class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @first_twelve = Attraction.first(12)
  end
end
