class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :city, :created_at, :updated_at, :rating
  has_many :reviews
end
