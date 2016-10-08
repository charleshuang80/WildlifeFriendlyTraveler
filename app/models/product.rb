class Product < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :animal_group
  has_many :pictures, as: :imageable
  
end
