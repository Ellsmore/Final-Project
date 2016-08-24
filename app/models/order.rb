class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  belongs_to :order

  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase Order"]

  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil #stop order being destroy when cart is destroyed
      line_items << item
    end
  end

end
