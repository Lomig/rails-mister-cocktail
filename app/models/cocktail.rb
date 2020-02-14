# frozen_string_literal: true

##
# Cocktail Model
class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true,
                   presence: true,
                   allow_blank: false

  has_one_attached :image

  attribute :instructions, :text
end
