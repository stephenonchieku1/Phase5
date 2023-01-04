class RouteSerializer < ActiveModel::Serializer
  attributes :id, :From_location, :To_location, :Price
end
