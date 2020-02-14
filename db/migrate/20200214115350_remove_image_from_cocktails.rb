# frozen_string_literal: true

##
# Migration class - Removing old URL Image field
class RemoveImageFromCocktails < ActiveRecord::Migration[6.0]
  def change
    remove_column :cocktails, :image, :string
  end
end
