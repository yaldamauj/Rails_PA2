Rails.application.routes.draw do
  get 'users/new'
  get 'static_pages/home'
  get "sign_up", to: "registrations#new"
  post "sign_up", to:  "registrations#create"
  resources :instructors
  resources :subjects
  resources :courses
  root 'static_pages#home'
end
