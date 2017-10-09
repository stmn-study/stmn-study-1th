class Activity < ActiveRecord::Migration[5.0]
  def change
    change_column :activities, :project_id, :integer, null: false
  end
end
