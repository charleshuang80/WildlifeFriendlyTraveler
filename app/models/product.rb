class Product < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :animal_group
end
