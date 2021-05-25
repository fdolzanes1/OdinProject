class Author < ApplicationRecord

	validates( :username, presence: true, uniqueness: true, length: { in: 3..12 } )
	validates( :email, uniqueness: true, confirmation: { case_sensitive: false } )
	has_many :posts
	has_many :comments
end
