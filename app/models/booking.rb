class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :attraction

  # a booking must be linked to a user and an attraction
  validates_associated :user, :attraction
end
