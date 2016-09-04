Rails.application.routes.draw do
  resources :exercises
  root 'exercises#index'
end
