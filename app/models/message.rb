class Message < ActiveRecord::Base
  belongs_to :conversation

  validates_presence_of :content, :conversation_id
  validates :content, length: { maximum: 1500 }
end
