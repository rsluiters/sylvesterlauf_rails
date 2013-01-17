class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, presence: true, length: { in: 1..30 }
  validates :email, presence: true, length: { in: 1..100 }, format: { with: VALID_EMAIL_REGEX },  uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates_confirmation_of :password
  validates :password_confirmation, presence: true
  
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
end