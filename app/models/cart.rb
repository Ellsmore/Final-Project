class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy # ':dependent => :destroy' indicates that the existence of line items is dependent on the existence of the cart i.e. When we delete a cart from the DB we want to delete any associated line items also
end
