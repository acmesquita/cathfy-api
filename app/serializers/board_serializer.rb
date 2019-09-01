class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :lists
end
