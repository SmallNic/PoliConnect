Rails.application.routes.draw do

  root 'questions#index'
  get '/about', to: 'about#index'
  devise_for :users

  resources :users

  resources :questions do
    resources :responses
    resources :tags, except: [:index, :show]
  end

  resources :tags, only: [:index, :show]
end
