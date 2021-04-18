class Post < ApplicationRecord
  # UserモデルとPostモデルのアソシエーション
  belongs_to :user

  # PostモデルとPhotoモデルのアソシエーション
  has_many :photos, dependent: :destroy

  # PostモデルとLikeモデルのアソシエーション
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy

  # PostモデルとCommentモデルのアソシエーション
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :photos

  def liked_by(current_user)
    # user_idが一致するlikeを検索する
    Like.find_by(user_id: current_user.id, post_id: id)
  end

  def is_belongs_to?(user)
    Post.find_by(user_id: user.id, id: id)
  end
end
