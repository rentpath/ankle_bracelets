class Event < ActiveRecord::Base
  belongs_to :organization
  has_and_belongs_to_many :volunteers, class_name: 'User'
end
