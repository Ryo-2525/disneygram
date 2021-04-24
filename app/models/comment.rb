class Comment < ApplicationRecord
  # PostモデルとCommentモデルのアソシエーション
  belongs_to :post
  # UserモデルとCommentモデルのアソシエーション
  belongs_to :user
end
