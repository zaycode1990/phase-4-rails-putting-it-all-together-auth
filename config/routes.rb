Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :recipes, only: [:index, :create]
  get "/me", to: "users#show"
  get "/recipes", to: "recipes#index"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  post "recipes", to: "recipes#create"
  delete "/logout", to: "sessions#destroy"


   

end
