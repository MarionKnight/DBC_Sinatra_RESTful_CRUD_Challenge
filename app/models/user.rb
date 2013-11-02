class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :first_name, :last_name, :email, :password_hash, presence: true
  validates :email, uniqueness: true

end
