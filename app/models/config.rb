class Config < ApplicationRecord
  validates :start_time, :end_time, presence: true

  def active?
    Time.now.between?(start_time, end_time)
  end
end
