class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title, :color, :lists_size

  def lists_size
    object.lists.size
  end
end
