class Conversation < ActiveRecord::Base
  belongs_to :user
  belongs_to :firmuser

  has_many :messages, dependent: :destroy

  scope :involving, -> (user) do
  	where("conversations.user_id =? OR conversations.firmuser_id =?",user.id,user.id)
  end
  	
  scope :between, -> (user_id,firmuser_id) do
  	where("(conversations.user_id =? AND conversations.firmuser_id =?"),user_id,firmuser_id)
  end
end
