class AddAliasToStakeholders < ActiveRecord::Migration[5.2]
  def change
    add_column :stakeholders, :alias, :string
  end
end
