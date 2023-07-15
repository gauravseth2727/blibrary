Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  post '/auth/login', to: 'authentication#login'

  resources :libraries, only:[:index] do
  	collection do
  		get 'checked_out_books'
  		get 'available_books'
  	end
  end
end
