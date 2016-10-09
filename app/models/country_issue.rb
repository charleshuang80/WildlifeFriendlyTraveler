class CountryIssue < ActiveRecord::Base
  belongs_to :issueable, polymorphic: true
  belongs_to :country
end
