class RegistrationsController < Devise::RegistrationsController
  # Devise でユーザーがパスワードなしでアカウント情報を変更するのを許可

  protected

  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end

  # 変更後マイページに移行
  def after_update_path_for(resource)
    user_path(resource)
  end
end
