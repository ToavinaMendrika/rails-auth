class User < ApplicationRecord
  has_secure_password
  has_secure_token :user_token
  validates :name, presence: true,  uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: %r{ ^[0-9a-z][0-9a-z.+]+[0-9a-z]@[0-9a-z][0-9a-z.-]+ [0-9a-z]$ }xi, message:"email not valid"}
end
