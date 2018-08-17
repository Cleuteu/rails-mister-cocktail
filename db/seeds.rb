# require 'open-uri'
# require 'json'

puts 'Cleaning database...'
Ingredient.destroy_all
Cocktail.destroy_all

url_ingredients = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
url_cocktails = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list'

doc_ingredients = open(url_ingredients).read
doc_cocktails = open(url_cocktails).read
ingredients = JSON.parse(doc_ingredients)
cocktails = JSON.parse(doc_cocktails)


puts 'Creating ingredients and cocktails...'


photos = ['mue5ckphqi6otpapb0dr', 'pk5yeixdtrazw0rwshaj', 'njionxeuacdziau6qvgw', 'xdpkiavv7fv6l2n5zr8n', 'f6wp7x2dkf1gkfzwfug8']
ingredients["drinks"].each { |value| Ingredient.create!(name: value['strIngredient1']) }
cocktails["drinks"].each_with_index do |value, index|
  Cocktail.create!(name: value['strCategory'])
end

puts 'Finished!'

