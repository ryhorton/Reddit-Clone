Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resources :subs
  resources :posts, except: [:index]
  resource :session, only: [:new, :create, :destroy]


end
