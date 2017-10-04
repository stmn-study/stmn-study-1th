class CreateSupportedPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :supported_points do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :point

      t.timestamps
    end
  end
end
