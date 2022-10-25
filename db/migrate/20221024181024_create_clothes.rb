class CreateClothes < ActiveRecord::Migration[7.0]
  def change
    create_table :clothes do |t|
      t.string :name
      t.integer :clothes_category_id
      t.timestamps
    end
  end
end
