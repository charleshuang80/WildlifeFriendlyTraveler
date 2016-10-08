class CreateProductGroups < ActiveRecord::Migration
  def change
    create_table :product_groups do |t|
      t.string :name
      t.text :description
      t.attachment :primary_photo
      t.references :section, index: true, foreign_key: true

      t.timestamps
    end
  end
end
