class Attraction < ApplicationRecord
  validates :name, :one_liner, :description, presence: true
  
  validates :name, uniqueness: true

  validates :name, length: { in: 3..50,
    wrong_length: 'Must have between 3 and 50 characters'}
  validates :one_liner, length: { in: 50..150,
    wrong_length: 'Must have between 50 and 150 characters'}
  validates :description, length: { in: 150..500,
   wrong_length: 'Must have between 150 and 500 characters'}
end
