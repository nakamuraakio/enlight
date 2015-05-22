class Message < ActiveRecord::Base
  belongs_to :conversation

  validates_presence_of :content, :conversation_id
end
