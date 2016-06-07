class AddLatitudeAndLongitudeToToys < ActiveRecord::Migration
  def change
    add_column :toys, :latitude, :float
    add_column :toys, :longitude, :float
  end
end
