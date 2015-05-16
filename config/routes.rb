Rails.application.routes.draw do

  root 'questions#index'
  get '/about', to: 'about#index'
  devise_for :users

  resources :users

  resources :questions do
    resources :responses
  end

  resources :tags

end
