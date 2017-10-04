class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :gender
      t.integer :points
      t.binary :image

      t.timestamps
    end
  end
end
