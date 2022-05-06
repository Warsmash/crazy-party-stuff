
require "open-uri"
require "nokogiri"

url = "https://over21partyrentals.com/products/crazy-stuff/page/5/"
html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

articles = html_doc.search('article')

articles.each do |article|
  name = article.search(".product-title-loop").search('a').text
  one_liner = article.search("p").text.split('.').first

  show_url = article.search(".product-title-loop").search('a').attribute("href").value
  show_file = URI.open(show_url).read
  show_doc = Nokogiri::HTML(show_file)

  unless show_doc.search('.side-image').search('img').first.attribute("src").nil?
    img_url = show_doc.search('.side-image').search('img').first.attribute("src").value
    file = URI.open(img_url)
    description = show_doc.search('article').search('p').first.text

    attraction = Attraction.new(
                  name: name,
                  one_liner: one_liner,
                  description: description,
                )
    attraction.photo.attach(io: file, filename: "#{attraction.name}.jpg", content_type: 'image/jpg')

    attraction.user = User.first
    attraction.save
  end
end
