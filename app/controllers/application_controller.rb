class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後はログインユーザーのshowページへ遷移
  def after_sign_in_path_for(resource)
  	user_path(resource)
  end
  # ログアウト後はトップページへ遷移
  def after_sign_out_path_for(resource)
  	root_path
  end

  protected
  # 社員登録時に氏名のデータ操作を許可
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
