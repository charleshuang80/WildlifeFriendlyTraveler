class AddTopConcernToCountryIssues < ActiveRecord::Migration
  def change
    add_column :country_issues, :top_concern, :boolean, null: false, default: false
  end
end
