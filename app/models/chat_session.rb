class ChatSession < ActiveRecord::Base

	attr_accessible :user_id

	belongs_to :user
	belongs_to :chat
end
