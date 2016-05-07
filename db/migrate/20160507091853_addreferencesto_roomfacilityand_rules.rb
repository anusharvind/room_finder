class AddreferencestoRoomfacilityandRules < ActiveRecord::Migration
  def change
  	add_reference :room_facilities, :room, index: true
  	add_reference :room_rules, :room, index: true
  end
end
