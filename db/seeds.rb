require "open-uri"
require "nokogiri"

Booking.destroy_all
Attraction.destroy_all
User.destroy_all

User.create!(email: 'test@test.com', password: 'azerty')

# Attraction 1

attraction = Attraction.new(
  name: 'Beer Pong',
  price: 100,
  one_liner: 'Beer + PingPong = Beer PONG',
  description: 'How to combine sport and drink',
)

img_url = 'https://images.unsplash.com/photo-1616428317393-acd93938b4fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 2

attraction = Attraction.new(
  name: 'The Great Swing',
  price: 100,
  one_liner: 'The best hair dryer ever',
  description: 'This super swing is for adult only',
)

img_url = 'https://images.unsplash.com/photo-1554481923-a6918bd997bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 3

attraction = Attraction.new(
  name: 'Climbing Wall',
  price: 100,
  one_liner: 'Funnier without the rope',
  description: 'DESCRIPTION',
)

img_url = 'https://images.unsplash.com/photo-1581100923924-7e4e234392ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 4

attraction = Attraction.new(
  name: 'Paintball',
  price: 100,
  one_liner: 'Free ticket for your Mother-in-law',
  description: 'Shot your Friends and Family with paint',
)

img_url = 'https://images.unsplash.com/photo-1614602355999-bc295cba75b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 5

attraction = Attraction.new(
  name: 'Karting',
  price: 50,
  one_liner: 'Vroom Vroom in cirle with friends',
  description: 'The only way to test your driving skills',
)

img_url = 'https://images.unsplash.com/photo-1644349495219-e5062c018637?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 6

attraction = Attraction.new(
  name: 'Inflatable Play Area',
  price: 100,
  one_liner: 'Can be combine with the Beer Pong',
  description: 'DESCRIPTION',
)

img_url = 'https://images.unsplash.com/photo-1633846799243-d28b399143cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 7

attraction = Attraction.new(
  name: 'RollerCoaster',
  price: 1000,
  one_liner: 'The Phineas & Furb dream come true',
  description: 'Large garden only',
)

img_url = 'https://images.unsplash.com/photo-1552910919-96dd34d2c4e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 8

attraction = Attraction.new(
  name: 'Escape Game - Chatelet Edition',
  price: 2,
  one_liner: 'Will you be able to find the right exit?',
  description: 'You only have 50 minutes to exit from this maze',
)

img_url = 'https://images.unsplash.com/photo-1588217885773-2f27c9c3b1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3095&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 9

attraction = Attraction.new(
  name: 'Giant Chess board',
  price: 100,
  one_liner: 'Like the original one but bigger',
  description: 'No, the magical version is not available',
)

img_url = 'https://images.unsplash.com/photo-1627512169108-60c8f4965ee6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 10

attraction = Attraction.new(
  name: 'The Famous Flipper',
  price: 100,
  one_liner: "Back in the 80'- (The Middle Age)",
  description: 'Ask your Great grandma for a story',
)

img_url = 'https://images.unsplash.com/photo-1583841046364-6eee97af5d48?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 11

attraction = Attraction.new(
  name: 'Hide & Seek in the Desert',
  price: 100,
  one_liner: 'Will you be on time for the Wedding?',
  description: 'Scorpions and snakes are included',
)

img_url = 'https://images.unsplash.com/photo-1505244783088-5a36f166e5b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!


# Attraction 12

attraction = Attraction.new(
  name: 'Banana Ride with Friends',
  price: 100,
  one_liner: 'Friends + giant inflatable banana + high-speed boat',
  description: 'This is not a cruise',
)

img_url = 'https://images.unsplash.com/photo-1521289594125-e8e32a214a2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = User.first
attraction.save!
