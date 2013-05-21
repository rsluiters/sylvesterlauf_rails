class ApplicationsApplication < ActiveRecord::Base
  attr_accessible :applications_event_id, :birth_year, :comment, :course, :name
  belongs_to :applications_event
end
