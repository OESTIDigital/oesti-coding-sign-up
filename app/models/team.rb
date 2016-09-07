class Team < ApplicationRecord
  has_secure_password
  validates :name, :login, presence: true
end
