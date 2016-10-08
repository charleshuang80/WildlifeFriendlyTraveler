class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name, null: false
      t.integer :order

      t.timestamps
    end
  end
end
