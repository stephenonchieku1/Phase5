class SaccoSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :image_url

end
