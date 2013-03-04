class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, presence: true, length: { in: 1..30 }
  validates :email, presence: true, length: { in: 1..100 }, format: { with: VALID_EMAIL_REGEX },  uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates_confirmation_of :password
  validates :password_confirmation, presence: true
  
private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
  
end