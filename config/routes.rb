Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  resources :items, only: [:new]
  resources :store, only: [:index]
  resources :cats,  only: [:show]
  
  get 'store/cat_items', :to => 'store#cat_items'
  get 'store/spot_items', :to => 'store#spot_items'

#   resources :sessions do
#     get :token, on: :collection #-> /sessions/token (sessions#token controller action)
#  end
  root to: 'users#show'
end
