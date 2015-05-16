Rails.application.routes.draw do

  root 'users#index'
  devise_for :users

  resources :users

  resources :questions do
    resources :responses
  end

  resources :tags

end
