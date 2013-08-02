class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name
      t.integer :category_id
      t.string :slug

      t.timestamps
    end
  end
end
