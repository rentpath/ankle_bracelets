class Organization < ActiveRecord::Base
  has_many :events
  belongs_to :owner, class_name: User
end
