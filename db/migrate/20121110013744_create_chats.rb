class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.boolean :live
      t.timestamps
    end
  end
end
