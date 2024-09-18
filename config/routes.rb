Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :castles, only: [:index, :show] do
    resources :dragons, only: [:create]
  end

end
