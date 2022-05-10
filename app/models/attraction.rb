class Attraction < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  # an attraction must be linked to a user
  validates_associated :user
  # an attraction must have a name, a one-liner and a description
  validates :name, :one_liner, :description, :price, presence: true
  # an attraction's name must be unique
  validates :name, uniqueness: true

  validates :name, length: { in: 1..100,
    wrong_length: 'Must have between 3 and 200 characters'}
  validates :one_liner, length: { in: 5..500,
    wrong_length: 'Must have between 50 and 500 characters'}
  validates :description, length: { in: 10..10000,
   wrong_length: 'Must have between 150 and 2000 characters'}
end
