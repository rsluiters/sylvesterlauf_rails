class News < ActiveRecord::Base
  attr_accessible :content, :picture_url, :title
end
