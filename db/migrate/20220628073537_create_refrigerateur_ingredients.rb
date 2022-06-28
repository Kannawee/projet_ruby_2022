class CreateRefrigerateurIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :refrigerateur_ingredients do |t|
      t.integer :refrigerateur_id
      t.integer :ingredient_id
      t.timestamps
    end
  end
end
