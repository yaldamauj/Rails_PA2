Rails.application.routes.draw do
  get 'users/new'
  get 'static_pages/home'

  get "sign_up", to: "registrations#new"
  post "sign_up", to:  "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "registrations#create"

  delete "logout", to: "sesions#destroy"
  
  resources :instructors
  resources :subjects
  resources :courses
  resources :users

  root 'static_pages#home'
end
