class CreateCulinarystyles < ActiveRecord::Migration[5.0]
  def change
    create_table :culinarystyles do |t|
      t.string :name
      t.string :description
      t.text :speciality
      t.string :cardpic
      t.string :banerpic
      t.string :fontpic

      t.timestamps
    end
  end
end
