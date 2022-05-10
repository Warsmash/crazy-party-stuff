require "open-uri"
require "nokogiri"

Booking.destroy_all
Attraction.destroy_all
User.destroy_all

User.create!(email: 'test@test.com', password: 'azerty')

# Attraction 1

attraction = Attraction.new(
  name: 'NAME 1',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 2

attraction = Attraction.new(
  name: 'NAME 2',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 3

attraction = Attraction.new(
  name: 'NAME 3',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 4

attraction = Attraction.new(
  name: 'NAME 4',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 5

attraction = Attraction.new(
  name: 'NAME 5',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 6

attraction = Attraction.new(
  name: 'NAME 6',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 7

attraction = Attraction.new(
  name: 'NAME 7',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 8

attraction = Attraction.new(
  name: 'NAME 8',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 9

attraction = Attraction.new(
  name: 'NAME 9',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 10

attraction = Attraction.new(
  name: 'NAME 10',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 11

attraction = Attraction.new(
  name: 'NAME 11',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 12

attraction = Attraction.new(
  name: 'NAME 12',
  price: 100,
  one_liner: 'ONE_LINER',
  description: 'DESCRIPTION',
)

img_url = 'https://picsum.photos/200/300'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!
