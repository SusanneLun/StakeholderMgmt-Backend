class AddProjectIdToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :project_id, :integer
  end
end
