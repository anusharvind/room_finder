class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :area
      t.integer :room_type
      t.string :total_limit_integer
      t.integer :current_vacancy
      t.string :city
      t.string :gender_preference
      t.boolean :visibility
      t.float :total_rent
      t.float :expected_rent
      t.string :latitude
      t.string :longitude
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
