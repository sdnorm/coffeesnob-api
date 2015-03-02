class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at

  def id
    object.token
  end

end
