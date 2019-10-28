class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name,          null: false
      t.integer :price,          null: false
      t.string :address,          null: false
      t.integer :age_building,          null: false
      t.text :note,          null: false

      t.timestamps
    end
  end
end
