class RemovePasswordDigestFromSaccos < ActiveRecord::Migration[7.0]
  def change
    remove_column :saccos, :password_digest, :integer
  end
end
