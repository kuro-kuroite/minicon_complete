Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'controller_name#action_name'
  root 'events#index'
  
  resources :events, only: [:index] do
    resources :purchases, only: [:new, :create]
  end

  get '/purchases', to: 'purchases#index'

  namespace :admin do
    resources :event_categories
    resources :events
  end
  
  resources :event_categories, only: [:show]
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
