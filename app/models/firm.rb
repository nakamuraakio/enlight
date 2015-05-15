class Firm < ActiveRecord::Base
  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :logo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates :name, presence: true
  validates :description, length: {  maximum: 500 }

  belongs_to :firmuser, dependent: :destroy
  validates :firmuser, presence: true
  validates :firmuser_id, :presence => true, :uniqueness => true
  
  belongs_to :firmuser
end
