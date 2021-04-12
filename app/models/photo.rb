class Photo < ApplicationRecord
  # PostモデルとPhotoモデルのアソシエーション
  belongs_to :post

  validates :image, presence: true

  # PhotoモデルのimageカラムとCarrierWaveのアップローダー紐付け
  mount_uploader :image, ImageUploader

  class << self
    # アップロードされた画像のサイズをバリデーションする
    def picture_size?(image)
      image.size < 1.megabytes
    end
  end
end
