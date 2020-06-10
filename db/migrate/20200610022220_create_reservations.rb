class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.datetime :time
      t.integer :hotel_id
      t.integer :dog_id

      t.timestamps
    end
  end
end
