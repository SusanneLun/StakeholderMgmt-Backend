class CreateProjectStakeholders < ActiveRecord::Migration[5.2]
  def change
    create_table :project_stakeholders do |t|
      t.references :project, foreign_key: true
      t.references :stakeholder, foreign_key: true

      t.timestamps
    end
  end
end
