class Post < ApplicationRecord
  # UserモデルとPostモデルのアソシエーション
  belongs_to :user
  
  # PostモデルとPhotoモデルのアソシエーション
  has_many :photos, dependent: :destroy
  
  accepts_nested_attributes_for :photos
end
