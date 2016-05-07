class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_id
      t.string :city
      t.integer :gender

      t.timestamps null: false
    end
  end
end
