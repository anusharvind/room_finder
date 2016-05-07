class CreateLocationTable < ActiveRecord::Migration
  def change
    create_table :location_areas do |t|
        t.string :area
        t.timestamps null: true  	
    end
  end
end
