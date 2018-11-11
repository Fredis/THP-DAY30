class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.date :departure_date
      t.string :departure_airport_id
      t.string :arrival_airport_id

      t.timestamps
    end
    add_index :flights, :departure_airport_id
    add_index :flights, :arrival_airport_id
  end
end
