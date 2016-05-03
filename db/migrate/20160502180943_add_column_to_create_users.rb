class AddColumnToCreateUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :zip_code, :integer
  end
end
