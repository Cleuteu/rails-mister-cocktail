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

ingredients["drinks"].each { |value| Ingredient.create!(name: value['strIngredient1']) }
cocktails["drinks"].each { |value| Cocktail.create!(name: value['strCategory']) }

puts 'Finished!'



