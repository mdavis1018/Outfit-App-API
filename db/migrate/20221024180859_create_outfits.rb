class CreateOutfits < ActiveRecord::Migration[7.0]
  def change
    create_table :outfits do |t|
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
