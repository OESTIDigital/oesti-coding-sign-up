class User < ApplicationRecord
	has_secure_password

	validates :name, presence: true
  validates :email, presence: true, uniqueness: true

	scope :all_except, ->(user) { where.not(id: user) }
end
