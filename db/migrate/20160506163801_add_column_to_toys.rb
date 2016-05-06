class AddColumnToToys < ActiveRecord::Migration
  def change
    add_column :toys, :user_id, :integer
  end
end
