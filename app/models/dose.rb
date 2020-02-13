class Dose < ApplicationRecord
  belongs_to :Cocktail
  belongs_to :Ingredient
end
