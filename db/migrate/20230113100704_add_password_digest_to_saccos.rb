class AddPasswordDigestToSaccos < ActiveRecord::Migration[7.0]
  def change
    add_column :saccos, :password_digest, :integer
  end
end
