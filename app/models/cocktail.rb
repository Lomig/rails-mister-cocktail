# frozen_string_literal: true

##
# Cocktail Model
class Cocktail < ApplicationRecord
  has_many :doses, dependent: destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true
end
