class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :product_group, index: true, foreign_key: true
      t.references :animal_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
