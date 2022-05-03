class Attraction < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  # an attraction must be linked to a user
  validates_associated :user
  # an attraction must have a name, a one-liner and a description
  validates :name, :one_liner, :description, presence: true
  # an attraction's name must be unique
  validates :name, uniqueness: true

  validates :name, length: { in: 3..50,
    wrong_length: 'Must have between 3 and 50 characters'}
  validates :one_liner, length: { in: 20..150,
    wrong_length: 'Must have between 50 and 150 characters'}
  validates :description, length: { in: 100..500,
   wrong_length: 'Must have between 150 and 500 characters'}
end
