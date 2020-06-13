class ChangeDataTypeReservations < ActiveRecord::Migration[6.0]
  def change
    change_column :reservations, :time, :time
    change_column :reservations, :date, :date
  end
end
