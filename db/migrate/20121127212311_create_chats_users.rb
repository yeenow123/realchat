class CreateChatsUsers < ActiveRecord::Migration
  def change
    create_table :chats_users do |t|
      t.integer :chat_id
      t.integer :user_id
      t.timestamps
    end
  end
end
