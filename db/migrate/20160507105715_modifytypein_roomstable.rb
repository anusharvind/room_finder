class ModifytypeinRoomstable < ActiveRecord::Migration
  def change
  	change_column :rooms, :total_limit , :integer
  end
end
