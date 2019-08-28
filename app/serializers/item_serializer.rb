class ItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :done, :card_id
end
