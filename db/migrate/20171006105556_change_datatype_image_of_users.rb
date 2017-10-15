class ChangeDatatypeImageOfUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :image, :string
  end
end
