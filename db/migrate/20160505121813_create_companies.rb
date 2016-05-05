class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :info

      t.timestamps null: false
    end
  end
end
