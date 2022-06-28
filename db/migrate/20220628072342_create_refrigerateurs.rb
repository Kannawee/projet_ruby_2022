class CreateRefrigerateurs < ActiveRecord::Migration[6.1]
  def change
    create_table :refrigerateurs do |t|
      t.string :name
      t.timestamps
    end
  end
end
