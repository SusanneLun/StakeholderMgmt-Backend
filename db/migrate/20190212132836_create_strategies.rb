class CreateStrategies < ActiveRecord::Migration[5.2]
  def change
    create_table :strategies do |t|
      t.string :option
      t.integer :category_id

      t.timestamps
    end
  end
end
