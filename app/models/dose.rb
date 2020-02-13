# frozen_string_literal: true

##
# Dose Model
class Dose < ApplicationRecord
  belongs_to :Cocktail
  belongs_to :Ingredient

  validates :description, :cocktail, :ingredient, presence: true
  validates :cocktail, scope: :ingredient, uniqueness: true
end
