require "open-uri"
require "nokogiri"

Booking.destroy_all
Attraction.destroy_all
User.destroy_all

User.create!(email: 'test@test.com', password: 'azerty')

# User.new(first_name: , last_name: , email: , password: )

paul = User.new(first_name: 'Paul', last_name: 'Portier', email: 'paul@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-UP3USJP7F-55bf4dafd2c6-512')
paul.photo.attach(io: img, filename: "paul.jpg", content_type: 'image/jpg')
paul.save!

jeremy = User.new(first_name: 'Jeremy', last_name: 'Barbedienne', email: 'jeremy@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-U010LE2G2MV-875acd0f9038-512')
jeremy.photo.attach(io: img, filename: "jeremy.jpg", content_type: 'image/jpg')
jeremy.save!

charlotte = User.new(first_name: 'Charlotte', last_name: 'Bory', email: 'charlotte@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-U01HWUHQEMQ-c92da5718288-512')
charlotte.photo.attach(io: img, filename: "charlotte.jpg", content_type: 'image/jpg')
charlotte.save!

claire = User.new(first_name: 'Claire', last_name: 'Ziemendorf', email: 'claire@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-UBNBUGXV4-1097582501e0-512')
claire.photo.attach(io: img, filename: "claire.jpg", content_type: 'image/jpg')
claire.save!

alex = User.new(first_name: 'Alex', last_name: 'Platteeuw', email: 'alex@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-UTTF8GQEA-eb5b4e5ee120-512')
alex.photo.attach(io: img, filename: "alex.jpg", content_type: 'image/jpg')
alex.save!

kenza = User.new(first_name: 'Kenza', last_name: 'Tighrine', email: 'kenza@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-U02TEDFTQSE-01f1581d081f-512')
kenza.photo.attach(io: img, filename: "kenza.jpg", content_type: 'image/jpg')
kenza.save!

sophiana = User.new(first_name: 'Sophiana', last_name: 'B', email: 'sophiana@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-U02U3AW8MJR-bdea51353b1e-512')
sophiana.photo.attach(io: img, filename: "sophiana.jpg", content_type: 'image/jpg')
sophiana.save!

bruno = User.new(first_name: 'Bruno', last_name: 'Le Lay', email: 'bruno@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-U02UW1859ME-41c79280d179-512')
bruno.photo.attach(io: img, filename: "bruno.jpg", content_type: 'image/jpg')
bruno.save!

aicha = User.new(first_name: 'Aicha', last_name: 'Diagne', email: 'aicha@partystuff.com', password: 'azerty')
img = URI.open('https://ca.slack-edge.com/T02NE0241-U02TPH1HNK1-32225ca26924-512')
aicha.photo.attach(io: img, filename: "aicha.jpg", content_type: 'image/jpg')
aicha.save!

# Attraction 1

attraction = Attraction.new(
  name: 'Beer Pong',
  price: 15,
  one_liner: 'If you can\'t aim, you\'ll be drunk',
  description: 'How to combine sports and drinks'
)

img_url = 'https://images.unsplash.com/photo-1616428317393-acd93938b4fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = paul
attraction.save!


# Attraction 2

attraction = Attraction.new(
  name: 'The Great Swing',
  price: 70,
  one_liner: 'The best hair dryer ever',
  description: 'This super swing is for adults only. If you\'re afraid of heights, being drunk is the perfect occasion to overcome it'
)

img_url = 'https://images.unsplash.com/photo-1554481923-a6918bd997bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = jeremy
attraction.save!


# Attraction 3

attraction = Attraction.new(
  name: 'Climbing Wall',
  price: 120,
  one_liner: 'Funnier without the rope',
  description: 'This wall is perfect for the fearless climbers.
                For those who\'ve never climbed, don\'t worry. As long as you have an arm and a leg, you\'ll be perfect'
)

img_url = 'https://images.unsplash.com/photo-1581100923924-7e4e234392ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = charlotte
attraction.save!


# Attraction 4

attraction = Attraction.new(
  name: 'Paintball',
  price: 250,
  one_liner: 'Free ticket for your Mother-in-law',
  description: 'Shoot your friends and family with paint, and pretend it\'s just a game'
)

img_url = 'https://images.unsplash.com/photo-1614602355999-bc295cba75b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = claire
attraction.save!


# Attraction 5

attraction = Attraction.new(
  name: 'Karting',
  price: 50,
  one_liner: 'Vroom Vroom in cirle with friends',
  description: 'The only real way to test your driving skills'
)

img_url = 'https://images.unsplash.com/photo-1644349495219-e5062c018637?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = alex
attraction.save!


# Attraction 6

attraction = Attraction.new(
  name: 'Inflatable Play Area',
  price: 230,
  one_liner: 'Can be combined with the Beer Pong',
  description: 'If you have not tried this then your childhood probably sucked. We are giving you a second chance'
)

img_url = 'https://images.unsplash.com/photo-1633846799243-d28b399143cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = paul
attraction.save!


# Attraction 7

attraction = Attraction.new(
  name: 'RollerCoaster',
  price: 1000,
  one_liner: 'The Phineas & Furb dream come true',
  description: 'This 7 ring rollercoaster is the perfect attraction for big celebrations. Large gardens only.'
)

img_url = 'https://images.unsplash.com/photo-1552910919-96dd34d2c4e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = jeremy
attraction.save!


# Attraction 8

attraction = Attraction.new(
  name: 'Escape Game',
  price: 25,
  one_liner: 'Will you be able to find the right exit?',
  description: 'You only have 50 minutes to exit this maze.
  It can be mounted anywhere from the inside of an appartment to a large garden.
  Bring your claustrophobic friends: it\'ll be fun.'
)

img_url = 'https://images.unsplash.com/photo-1588217885773-2f27c9c3b1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3095&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = charlotte
attraction.save!


# Attraction 9

attraction = Attraction.new(
  name: 'Giant Chess board',
  price: 80,
  one_liner: 'Like the original one but bigger',
  description: 'No, the magic version is not available'
)

img_url = 'https://images.unsplash.com/photo-1627512169108-60c8f4965ee6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = claire
attraction.save!


# Attraction 10

attraction = Attraction.new(
  name: 'The Famous Flipper',
  price: 100,
  one_liner: "Back in the 80'- (The Middle Age)",
  description: 'Ask your Great grandma for a story'
)

img_url = 'https://images.unsplash.com/photo-1583841046364-6eee97af5d48?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = alex
attraction.save!


# Attraction 11

attraction = Attraction.new(
  name: 'Hide & Seek in the Desert',
  price: 100,
  one_liner: 'Will you be on time for the Wedding?',
  description: 'Scorpions and snakes are included'
)

img_url = 'https://images.unsplash.com/photo-1505244783088-5a36f166e5b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = kenza
attraction.save!


# Attraction 12

attraction = Attraction.new(
  name: 'Banana Ride with Friends',
  price: 100,

  one_liner: 'This is not a cruise',
  description: 'Friends + giant inflatable banana + high-speed boat: what could be better?
                Works best on water but if you have grass around, we can adapt.')


img_url = 'https://images.unsplash.com/photo-1521289594125-e8e32a214a2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80'
file = URI.open(img_url)
attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

attraction.user = kenza
attraction.save!
