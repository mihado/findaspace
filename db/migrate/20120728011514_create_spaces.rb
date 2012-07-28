class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.string :suburb
      t.string :city
      t.text :desc
      t.integer :capacity
      t.decimal :price, :precision => 8, :scale => 2
      t.string :img_url
      t.boolean :availability

      t.timestamps
    end
  end
end
