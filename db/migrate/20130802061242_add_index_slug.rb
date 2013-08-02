class AddIndexSlug < ActiveRecord::Migration
  def up
  	add_index :categories, :slug, unique: true
  	add_index :goods, :slug, unique: true
  end

  def down
  	remove_index :categories, :slug
  	remove_index :goods, :slug
  end
end
