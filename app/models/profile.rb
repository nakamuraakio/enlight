class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  validates :user, presence: true
  validates :user_id, :presence => true, :uniqueness => true
  validates :bio, length: { maximum: 1000 }
  validates :name, length: { maximum: 20 }
  validates_presence_of :name, :age, :university, :major, :phone, :bio
end
