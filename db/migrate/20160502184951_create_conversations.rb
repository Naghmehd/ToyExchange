class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.text :body, limit: 1000

      t.timestamps null: false
    end
  end
end
