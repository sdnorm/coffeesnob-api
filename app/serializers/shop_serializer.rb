class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip, :photo, :website, :rating, :description, :hours, :created_at
end
