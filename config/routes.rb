Rails.application.routes.draw do

  root 'homes#top'

  # 社員コントローラ
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  namespace :admin do
    resources :users, only: [:index]
  end

  # 現場コントローラ
  namespace :admin do
    resources :places, only: [:index, :create, :edit, :update]
  end

  # 業務コントローラ
  namespace :admin do
    resources :projects, only: [:index, :create, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
