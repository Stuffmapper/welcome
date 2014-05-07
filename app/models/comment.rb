class Comment < ActiveRecord::Base
	validates :email, presence: true,length: { minimum: 3 }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
