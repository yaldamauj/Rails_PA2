Rails.application.routes.draw do
  get 'static_pages/home'
  resources :instructors
  resources :subjects
  resources :courses
  root 'application#hello'
end
