class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip, :photo, :website, :rating, :description, :hours, :phone, :created_at, :average_rating



end
