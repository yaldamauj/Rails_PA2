Rails.application.routes.draw do
  resources :instructors
  resources :subjects
  resources :courses
  resources :users
  resources :registrations
  resources :sessions
  get 'users/new'
  get 'static_pages/home'

  
  get "sign_up", to: "registrations#new"
  post "sign_up", to:  "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
  


  root 'static_pages#home'
end
