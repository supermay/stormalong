Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "admin/dashboard#index"
  devise_scope :user do
    get "/users/sign_up", :to => "articles#index"
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  resources :photos

  namespace :api do
    resources :articles
    resources :photos
  end

end
