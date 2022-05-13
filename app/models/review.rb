class Review < ApplicationRecord
  belongs_to :attraction
  validates :content, length: { minimum: 20 }
end
