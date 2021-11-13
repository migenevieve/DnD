class CreateDecors < ActiveRecord::Migration[6.1]
  def change
    create_table :decors do |t|
      t.string :title
      t.string :category
      t.string :luminosity
      t.string :decor_exposition
      t.text :extra
      t.string :address
      t.float :size
      t.string :capacity
      t.float :price
      t.float :longitude
      t.float :latitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
