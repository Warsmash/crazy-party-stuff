# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require "open-uri"
require "nokogiri"

url = "https://over21partyrentals.com/products/crazy-stuff"
html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

articles = html_doc.search('article')

Booking.destroy_all
Attraction.destroy_all
User.destroy_all

User.create!(email: 'test@test.com', password: 'azerty')

articles.each do |article|
  name = article.search(".product-title-loop").search('a').text
  p name
  one_liner = article.search("p").text.split('.').first

  show_url = article.search(".product-title-loop").search('a').attribute("href").value
  show_file = URI.open(show_url).read
  show_doc = Nokogiri::HTML(show_file)

  unless show_doc.search('.side-image').search('img').first.attribute("src").nil?
    img_url = show_doc.search('.side-image').search('img').first.attribute("src").value
    file = URI.open(img_url)
    description = show_doc.search('article').search('p').first.text[0..450]
    description = description.length < 15 ? 'lololololololololololol' : description
    puts "\n\n\n\n\n#{description}\n\n\n\n\n"
    p description

    attraction = Attraction.new(
                  name: name,
                  one_liner: one_liner,
                  description: description,
                )
    attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

    attraction.user = User.first
    attraction.save!
  end
end
