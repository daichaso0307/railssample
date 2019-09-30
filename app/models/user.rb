class User < ApplicationRecord
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
  VALID_EMAIL_REGEX = /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/
  
  validates :name, presence: true, uniqueness: true, length: {maximum: 15}
  validates :email, presence: true, uniqueness: true, format: {with: VALID_EMAIL_REGEX}
  validates :password, format: {with: VALID_PASSWORD_REGEX}
  
  has_secure_password
end
