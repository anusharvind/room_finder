class CreateRoomRules < ActiveRecord::Migration
  def change
    create_table :room_rules do |t|
      t.boolean :veg_only
      t.boolean :smoking_allowed
      t.boolean :alcohol_allowed

      t.timestamps null: false
    end
  end
end
