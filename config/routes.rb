Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "admin/dashboard#index"
  devise_scope :user do
    get "/users/sign_up", :to => "admin/dashboard#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :articles, only: [:index, :show]
    resources :photos, only: [:index, :show]
  end

  match '*path', to: redirect('/'), via: :get

end
