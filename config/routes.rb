Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resources :subs

  resource :session, only: [:new, :create, :destroy]


end
