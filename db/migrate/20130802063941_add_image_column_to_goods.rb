class AddImageColumnToGoods < ActiveRecord::Migration
  def self.up
    add_attachment :goods, :image
  end

  def self.down
    remove_attachment :goods, :image
  end
end
