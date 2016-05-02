class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name, null: false
      t.text :category, null: false
      t.text :condition, null: false
      t.text :description, null: false
      t.string :brand, null: false
      t.integer :age_group, null: false
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
