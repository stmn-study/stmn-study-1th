class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :user_id, limit:4, null:false
      t.integer :project_id, limit:4
      t.integer :supported_point_id, limit:4
      t.integer :comment_id, limit:4
      t.integer :type, limit:4, default:1, null:false

      t.timestamps
    end
  end
end
