class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :rating
      t.string :shop_id

      t.timestamps null: false
    end
  end
end
