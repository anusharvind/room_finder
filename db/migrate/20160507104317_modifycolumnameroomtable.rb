class Modifycolumnameroomtable < ActiveRecord::Migration
  def change
  	rename_column :rooms, :total_limit_integer, :total_limit
  end
end
