class AddLocationToToys < ActiveRecord::Migration
  def change
    add_column :toys, :location, :string
  end
end
