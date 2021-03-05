Rails.application.routes.draw do
  resources :instructors
  resources :subjects
  resources :courses
  root 'instructors#index'
end
