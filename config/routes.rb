Rails.application.routes.draw do
	namespace :admin do
	  get '/login' => 'login#new'
	  post '/login' => 'login#create'
	  get '/logout' => 'login#destroy'

	  get '/profile' => 'profile#edit'
	  patch '/profile' => 'profile#update'

	  resources :users
	  resources :exercises
  	resources :teams

	  root 'index#index'
	end
end
