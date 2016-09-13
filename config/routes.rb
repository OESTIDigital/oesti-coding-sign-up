Rails.application.routes.draw do
	namespace :admin do
	  get '/login' => 'login#new'
	  post '/login' => 'login#create'
	  get '/logout' => 'login#destroy'

    get '/profile' => 'profile#edit'
    patch '/profile' => 'profile#update'

    get '/config' => 'config#edit'
    patch '/config' => 'config#update'

	  resources :users
	  resources :exercises
  	resources :teams
    resources :categories

	  root 'index#index'
	end

  get '/login' => 'login#new'
  post '/login' => 'login#create'
  get '/logout' => 'login#destroy'

  get '/register' => 'register#new'
  post '/register' => 'register#create'

  get '/profile' => 'profile#edit'
  patch '/profile' => 'profile#update'

  patch '/upload' => 'upload#upload'

	root 'index#index'
end
