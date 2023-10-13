class Chat < ApplicationRecord
  after_create_commit { broadcast_prepend_to 'chats' }
  belongs_to :user
  has_many :messages
end
