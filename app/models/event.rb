class Event < ActiveRecord::Base
  belongs_to :organization
  has_and_belongs_to_many :volunteers, class_name: 'User'
  has_many :shifts

  validates :title, presence: true
  validates :slots, presence: true, numericality: { only_integer: true }
  validates :start_time, presence: true
  validates :end_time, presence: true
end
