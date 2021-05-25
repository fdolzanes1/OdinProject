class Comment < ApplicationRecord
  
  belongs_to :author
  belongs_to :post

  validates(:author_id, presence: true)
  validates(:post_id, presence: true)
  validates(:body, presence: true, length: { in: 5..100 })
end
