class AddNameToStakeholders < ActiveRecord::Migration[5.2]
  def change
    add_column :stakeholders, :name, :string
  end
end
