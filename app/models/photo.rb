class Photo < ApplicationRecord
  # PostモデルとPhotoモデルのアソシエーション
  belongs_to :post
  
  validates :image, presence: true
  
  # PhotoモデルのimageカラムとCarrierWaveのアップローダー紐付け
  mount_uploader :image, ImageUploader
end
