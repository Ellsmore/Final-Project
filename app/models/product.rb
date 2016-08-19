class Product < ActiveRecord::Base
  validates :title, :description, :image, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image, :format => {
    :with => %r{\.(gif|jpg|png)\z}i,
    :message => 'Image must be a URL for a gif, jpg or png image.'
  }


  # Above validations check the fields are not empty, price is a valid number and not less than $0.01, product titles are unqiue and image url follows format
end
