class CardSerializer < ActiveModel::Serializer
  attributes :id, :content, :labels, :user

  def user
    object.user.photo
  end

  def labels
    a = Array.new()
    a.push(object.labels)
  end
end
