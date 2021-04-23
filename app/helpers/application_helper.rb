module ApplicationHelper
  #profile_photoカラムに何もない場合、デフォルトのアイコンを表示Gravatar」
  def avatar_url(user)
    return user.profile_photo unless user.profile_photo.nil?
    "https://techpit-market-prod.s3.amazonaws.com/uploads/part_attachment/file/15782/2da91636-af73-4eed-91cd-320a0399609c.jpg"
  end
end
