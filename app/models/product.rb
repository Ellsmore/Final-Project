class Product < ActiveRecord::Base
  # default_scope :order => 'title' #displays products in alphabetical order
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, :image, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image, :format => {
    :with => %r{\.(gif|jpg|png)\z}i,
    :message => 'Image must be a URL for a gif, jpg or png image.'
  }
  # Above validations check the fields are not empty, price is a valid number and not less than $0.01, product titles are unqiue and image url follows format

  private # ensures that there are no line items referencing this product

  def ensure_not_referenced_by_any_line_item # If this hook method returns false, row will not be destroyed
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present!')
      return false
    end
  end

end
