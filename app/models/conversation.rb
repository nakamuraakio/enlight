class Conversation < ActiveRecord::Base
  belongs_to :user
  belongs_to :firmuser

  has_many :messages, dependent: :destroy

  default_scope { order(updated_at: :desc) }

  scope :involving, -> (user) do
  	where("conversations.user_id =? OR conversations.firmuser_id =?",user.id,user.id)
  end
  	
  scope :between, -> (user,firmuser) do
  	where("conversations.user_id =? AND conversations.firmuser_id =?",user,firmuser)
  end
end
