class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.string :name
      t.integer :power
      t.integer :interest
      t.integer :positivity
      t.references :stakeholder, foreign_key: true

      t.timestamps
    end
  end
end
