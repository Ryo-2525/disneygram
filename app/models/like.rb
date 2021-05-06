class Like < ApplicationRecord
  # UserモデルとLikeモデルのアソシエーション
  belongs_to :user

  # PostモデルとLikeモデルのアソシエーション
  belongs_to :post

  validates :user_id, uniqueness: { scope: :post_id }
end
