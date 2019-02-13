class CreateStakeholderStrategies < ActiveRecord::Migration[5.2]
  def change
    create_table :stakeholder_strategies do |t|
      t.integer :stakeholder_id
      t.integer :strategy_id
      t.integer :project_id

      t.timestamps
    end
  end
end
