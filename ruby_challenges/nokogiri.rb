require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(open('https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich'))

#search = doc.css('.ingredient-label').inner_text
#puts search

list = doc.css('.ingredient-label')

#Put each item's inner_html
list.each do |n|
    puts n.inner_html
end
