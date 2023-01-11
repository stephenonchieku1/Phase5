class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.integer :seat_no
      t.boolean :status

      t.timestamps
    end
  end
end
