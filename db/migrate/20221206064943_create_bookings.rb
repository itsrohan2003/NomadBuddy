class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :fullname
      t.string :destination_name
      t.integer :date
      # t.integer :user_id
      # t.integer :destination_id

      t.timestamps
    end
  end
end
