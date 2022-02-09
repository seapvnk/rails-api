Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    resources :category, :defaults => { :format => :json } do
      resources :product, :defaults => { :format => :json }
    end
  end


end
