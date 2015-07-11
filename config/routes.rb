Rails.application.routes.draw do

  get '/search', to: 'search#search'

  root 'questions#index'
  get '/about', to: 'about#index'
  devise_for :users

  resources :users

  resources :questions do
    resources :responses
    resources :tags, except: [:index, :show]
  end

  resources :tags, only: [:index, :show]

  # For use with acts_as_votable
  resources :questions do
    member do
      put "like", to: "questions#upvote"
      put "dislike", to: "questions#downvote"
    end
  end

end
