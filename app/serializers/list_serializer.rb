class ListSerializer < ActiveModel::Serializer
  attributes :title, :creatable, :done

  has_many :cards
end
