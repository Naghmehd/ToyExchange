class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.text :body, limit: 1000
      t.integer :toy_id, index: true, foreign_key: true
      t.integer :user_id, index: true, foreign_key: true
      t.integer :to_user_id, index: true, foreign_key: true
      t.integer :sender_id
      t.integer :recipient_id
      t.timestamps null: false
    end
  end
end
