class ProductGroup < ActiveRecord::Base
  belongs_to :section
  has_many :products
end
