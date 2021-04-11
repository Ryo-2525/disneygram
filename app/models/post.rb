class Post < ApplicationRecord
  # UserモデルとPostモデルのアソシエーション
  belongs_to :user
  
  # PostモデルとPhotoモデルのアソシエーション
  has_many :photos, dependent: :destroy
end
