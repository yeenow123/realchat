class CreateMessages < ActiveRecord::Migration
  def change
    	add_column :messages, :message, :string
    	remove_column :messages, :body
    
  end
end
