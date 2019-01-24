class CreateStakeholders < ActiveRecord::Migration[5.2]
  def change
    create_table :stakeholders do |t|
      t.string :title
      t.string :created_by

      t.timestamps
    end
  end
end
