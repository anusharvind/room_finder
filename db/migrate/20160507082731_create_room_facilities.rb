class CreateRoomFacilities < ActiveRecord::Migration
  def change
    create_table :room_facilities do |t|
      t.boolean :tv
      t.boolean :wasing_machine
      t.boolean :ac
      t.boolean :basic_appliance
      t.boolean :two_wheeler_parking
      t.boolean :four_wheeler_parking

      t.timestamps null: false
    end
  end
end
