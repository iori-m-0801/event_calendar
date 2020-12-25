class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false 
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :day, null: false
      t.integer :start_hour, null: false
      t.integer :start_minute, null: false
      t.text :cast, null: false
      t.string :place, null: false
      t.string :price_future
      t.string :price_today, null: false
      t.string :ticketlink
      t.timestamps
    end
  end
end
