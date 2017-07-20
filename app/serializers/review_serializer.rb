class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :author, :content, :created_at, :updated_at
  belongs_to :destination
end
