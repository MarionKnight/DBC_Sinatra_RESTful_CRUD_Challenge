class Note < ActiveRecord::Base
  # Remember to create a migration!
  validates :content, presence: true
end
