class Good < ActiveRecord::Base
  attr_accessible :category_id, :name, :slug, :image, :description

  belongs_to :category
  has_attached_file :image, styles: { preview: '75x75', normal: '800x600' }, default_url: "/images/:style/missing.gif"

  extend FriendlyId
  friendly_id :name, use: :slugged

  def self.uncategorized
  	Good.all - Category.all.map {|c| c.goods }.flatten 
  end

end
