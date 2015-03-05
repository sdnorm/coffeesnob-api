class AddStuffToShops < ActiveRecord::Migration
  def change
    add_column :shops, :address, :string
    add_column :shops, :city, :string
    add_column :shops, :state, :string
    add_column :shops, :zip, :string
    add_column :shops, :photo, :string
    add_column :shops, :website, :string
    add_column :shops, :rating, :integer
    add_column :shops, :description, :text
    add_column :shops, :hours, :string
    add_column :shops, :phone, :string
  end
end
