class AddStreetToUsers < ActiveRecord::Migration
  def change
    add_column :users, :street, :string
  end
end
