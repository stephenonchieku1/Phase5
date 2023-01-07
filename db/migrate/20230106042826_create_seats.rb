class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
