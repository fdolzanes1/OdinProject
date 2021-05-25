class Author < ApplicationRecord

	has_many :posts
	has_many :comments
	
	validates( :username, presence: true, uniqueness: true, length: { in: 3..12 } )
	validates( :email, uniqueness: true, confirmation: { case_sensitive: false } )
	
end
