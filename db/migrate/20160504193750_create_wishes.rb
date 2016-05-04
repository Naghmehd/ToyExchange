class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :toy, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
