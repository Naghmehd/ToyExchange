class AddToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :provider, null: false, default: "none"
      t.string :uid, null: false, default: "none"
    end

    add_index :users, :provider
    add_index :users, :uid
  end
end
