class Chat < ActiveRecord::Base
	has_many :users, :through => :chats_users
	has_many :messages
end
