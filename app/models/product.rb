class Product < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :animal_group
  has_many :pictures, as: :imageable

  has_many :country_issues, as: :issueable
  has_many :countries, through: :country_issues

  # has_many :note_joins, as: :notable
  #  has_many :notes, through: :note_joins
end
