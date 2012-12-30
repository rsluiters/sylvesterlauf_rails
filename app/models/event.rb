class Event < ActiveRecord::Base
  attr_accessible :date, :name, :raceresults_id, :registration_end, :registration_start
end
