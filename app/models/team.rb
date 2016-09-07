class Team < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :login, presence: true, uniqueness: true
end
