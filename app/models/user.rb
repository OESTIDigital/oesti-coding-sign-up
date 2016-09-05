class User < ApplicationRecord
	has_secure_password
	validates :name, :email, presence: true

	scope :all_except, ->(user) { where.not(id: user) }
end
