Rails.application.routes.draw do

  root 'homes#top'

  # 社員コントローラ
  devise_for :users
  resources :users, only: %i[index show edit update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
