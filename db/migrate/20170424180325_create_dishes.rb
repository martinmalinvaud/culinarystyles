class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.references :culinarystyle, foreign_key: true

      t.timestamps
    end
  end
end
