class Event < ActiveRecord::Base
  attr_accessible :date, :name, :raceresults_id, :registration_end, :registration_start
  
  def self.next_event
    Event.where("date >= ?",Date.today).first
  end
  
  def participants_list_url
    "http://my3.raceresult.com/details/index.php?page=3&eventid=#{raceresults_id}&lang=#{I18n.locale}"
  end
  
end
