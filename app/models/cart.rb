class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy # ':dependent => :destroy' indicates that the existence of line items is dependent on the existence of the cart i.e. When we delete a cart from the DB we want to delete any associated line items also

  def add_product(product_id)
    current_item = line_items.find_by_product_id(product_id)

    # find_by_product_id is a dynamic finder contstructed by Active Record

    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(:product_id => product_id)
    end
  current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price}
  end 
end
