class CreateChatSessions < ActiveRecord::Migration
  def change
    create_table :chat_sessions do |t|
      t.integer :user_id
      t.integer :chat_id
      t.timestamps
    end
  end
end
