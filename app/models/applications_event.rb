class ApplicationsEvent < ActiveRecord::Base
  attr_accessible :announcement_url, :comment, :deadline_internal, :name, :url
  has_many :applications_applications
end
