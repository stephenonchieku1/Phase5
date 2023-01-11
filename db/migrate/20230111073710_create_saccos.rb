class CreateSaccos < ActiveRecord::Migration[7.0]
  def change
    create_table :saccos do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :image_url

      t.timestamps
    end
  end
end
