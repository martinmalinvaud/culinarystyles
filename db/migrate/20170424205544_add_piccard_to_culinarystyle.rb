class AddPiccardToCulinarystyle < ActiveRecord::Migration[5.0]
  def change
    add_column :culinarystyles, :piccard, :string
  end
end
