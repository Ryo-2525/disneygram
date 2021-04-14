class User < ApplicationRecord

  # UserモデルとPostモデルのアソシエーション
  has_many :posts, dependent: :destroy

  # UserモデルとLikeモデルのアソシエーション
  has_many :likes

  # UserモデルとCommentモデルのアソシエーション
  has_many :comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 50 }

  # Devise でユーザーがパスワードなしでアカウント情報を変更するのを許可
  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
end
