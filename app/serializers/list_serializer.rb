class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :creatable, :done

  has_many :cards
end
