Rails.application.routes.draw do

  devise_for :users
  get '/' => 'site#home'
  
   

  resources :events
  resources :visits
  resources :reservations

  namespace :admin do
    # resources :dashboard
    resources :dashboard
    resources :reservations 
    resources :events
    post 'reservations/accept/:id', to: 'reservations#accept'
    # get :events, to: 'dashboard#events'
  end
end
