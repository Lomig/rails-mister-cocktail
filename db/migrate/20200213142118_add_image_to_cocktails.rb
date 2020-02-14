class AddImageToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :image, :string
  end
end
