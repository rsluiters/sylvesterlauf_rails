class GuestbookEntry < ActiveRecord::Base
  attr_accessible :content, :email, :name, :status
end
