Rails.application.routes.draw do
  resources :users
  resources :exercises
  root 'exercises#index'
end
