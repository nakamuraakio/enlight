class Profile < ActiveRecord::Base
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  belongs_to :user, dependent: :destroy
  validates :user, presence: true
  validates :user_id, :presence => true, :uniqueness => true
  validates :bio, length: { maximum: 1000 }
  validates :name, length: { maximum: 20 }
  validates_presence_of :name, :age, :university, :major, :phone, :bio


end
