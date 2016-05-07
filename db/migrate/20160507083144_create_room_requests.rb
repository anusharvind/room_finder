class CreateRoomRequests < ActiveRecord::Migration
  def change
    create_table :room_requests do |t|
      t.integer :status
      t.integer :no_of_peoples
      t.boolean :moved
      t.references :user, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
