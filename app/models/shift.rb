class Shift < ActiveRecord::Base
  belongs_to :event

  validates :title, presence: true
  validates :slots, presence: true, numericality: { only_integer: true }
  validates :start_time, presence: true
  validates :end_time, presence: true
  has_and_belongs_to_many :users
end
