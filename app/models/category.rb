class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id, :slug, :cat_order
  has_many :goods

  extend FriendlyId
  friendly_id :name, use: :slugged

  include ActsAsTree
  acts_as_tree :order => 'cat_order'

end
