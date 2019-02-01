class AddNoteToStakeholders < ActiveRecord::Migration[5.2]
  def change
    add_column :stakeholders, :note, :string
  end
end
