class CreateCountryIssues < ActiveRecord::Migration
  def change
    create_table :country_issues do |t|
      t.integer :country_id
      t.integer :issueable_id
      t.string :issueable_type

      t.timestamps
    end

    add_index :country_issues, [:issueable_id, :issueable_type]
  end
end
