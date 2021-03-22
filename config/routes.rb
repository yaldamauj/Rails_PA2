Rails.application.routes.draw do
  get 'users/new'
  get 'static_pages/home'
  resources :instructors
  resources :subjects
  resources :courses
  root 'static_pages#home'
end
