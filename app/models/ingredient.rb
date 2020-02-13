# frozen_string_literal: true

##
# Ingredient Model
class Ingredient < ApplicationRecord
  has_many :doses, dependent: restrict_with_exception

  validates :name, uniqueness: true
end
