class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :integer
    add_column :users, :points, :integer
    add_column :users, :image, :binary
  end
end
