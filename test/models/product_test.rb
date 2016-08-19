require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  # Ivalid? checks to see whether it validates, any? method sees whether there is an error associated with a particular attribute. Assert is a method call that tells the framework what we expect to be true.

  # assert_equal: optional fail message may be provided as final argument

test 'Product attributes must NOT be empty' do
  product = Product.new

  assert product.invalid?

  assert product.errors[:title].any?
  assert product.errors[:description].any?
  assert product.errors[:image].any?
  assert product.errors[:image].any?
end

test "product price must be positive" do
  product = Product.new(:title => "Test title", :description => "test description", :image => "test.jpg")

  product.price = -1
  assert product.invalid?
  assert_equal "must be greater than or equal to 0.01",
  product.errors[:price].join('; ')

  product.price = 0
  assert product.invalid?
  assert_equal "must be greater than or equal to 0.01", product.errors[:price].join('; ')

  product.price = 1
  assert product.valid?
end

end
