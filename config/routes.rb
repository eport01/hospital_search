Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  resources :hospitals, only: [:index]
  resources :users, except: [:new, :create] do 
    resources :hospitals, except: [:index]
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


end
