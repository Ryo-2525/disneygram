class Photo < ApplicationRecord
  # PostモデルとPhotoモデルのアソシエーション
  belongs_to :post
  
  validates :image, presence: true
end
