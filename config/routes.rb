Rails.application.routes.draw do
	root                    to: 'static_pages#home',       as: :home
	
	get  'users/new',		to: 'users#new',               as: :newuser
	post 'users/create',    to: 'users#create'           

	get 'users/error', 		to: 'users#error',             as: :error
	get 'users/:user_id',   to: 'users#show',			   as: :showprofil
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
