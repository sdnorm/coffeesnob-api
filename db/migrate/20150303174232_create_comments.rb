class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.string :shop_id


      t.timestamps null: false
    end
  end
end
