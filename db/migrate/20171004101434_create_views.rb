class CreateViews < ActiveRecord::Migration[5.0]
  def change
    create_table :views do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
