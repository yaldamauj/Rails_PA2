Rails.application.routes.draw do
  resources :instructors
  resources :subjects
  resources :courses
  resources :users
  resources :registrations
  resources :sessions
  resources :enrollments

  get 'users/new'
  get 'static_pages/home'

  get "instructors", to: "instructors#show"
  get "courses", to: "courses#show"
  get "subjects", to: "subjects#show"

  get "sign_up", to: "registrations#new"
  post "sign_up", to:  "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
  
  get 'search' => 'pages#show'

  root 'static_pages#home'
end
