class News < ActiveRecord::Base
  attr_accessible :content, :picture_url, :title
  
  
  scope :newest, order: "created_at DESC", limit: 10
end
