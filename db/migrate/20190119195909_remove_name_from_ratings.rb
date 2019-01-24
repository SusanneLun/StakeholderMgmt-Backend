class RemoveNameFromRatings < ActiveRecord::Migration[5.2]
  def change
    remove_column :ratings, :name, :string
  end
end
