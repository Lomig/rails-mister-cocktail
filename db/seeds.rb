# frozen_string_literal: true

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
JSON.parse(Net::HTTP.get(URI.parse(url)))["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end
