class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.references :Cocktail, null: false, foreign_key: true
      t.references :Ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
