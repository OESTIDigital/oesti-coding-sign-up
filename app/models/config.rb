class Config < ApplicationRecord
  validates :start_time, :end_time, presence: true

  def active?
    Time.current.between?(start_time, end_time)
  end
end
