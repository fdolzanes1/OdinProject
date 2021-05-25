class Comment < ApplicationRecord
  validates(
    :body,
    presence: true,
    length: { in: 5..100 }
  )
  validates(:author_id, presence: true)
  validates(:post_id, presence: true)
end
