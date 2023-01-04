class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :From_location
      t.string :To_location
      t.integer :Price


      t.timestamps
    end
  end
end
