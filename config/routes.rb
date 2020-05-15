Rails.application.routes.draw do

  root 'homes#top'

  # 社員コントローラ
  devise_for :users
  resources :users, only: %i[index show edit update] do
  	# is_activeカラムを「0:在籍」から「1:退職」へ変更するルーティング
  	collection do
      patch 'active'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
