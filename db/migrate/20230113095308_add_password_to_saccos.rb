class AddPasswordToSaccos < ActiveRecord::Migration[7.0]
  def change
    add_column :saccos, :password, :integer
  end
end
