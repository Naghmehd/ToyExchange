class AddProfileImageToToys < ActiveRecord::Migration
  def change
    add_column :toys, :profile_image_id, :string
  end
end
