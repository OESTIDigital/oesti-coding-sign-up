class Team < ApplicationRecord
  belongs_to :category

  has_secure_password

  has_attached_file :files
  validates_attachment_content_type :files, :content_type => ["application/zip", "application/octet-stream"]

  validates :name, presence: true
  validates :login, presence: true, uniqueness: true
end
