class RemovePasswordFromSaccos < ActiveRecord::Migration[7.0]
  def change
    remove_column :saccos, :password, :integer
  end
end
