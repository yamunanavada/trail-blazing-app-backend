Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, :routes, :saved_routes
      post "/login", to: "auth#create"
      get "/get_current_user", to: "auth#show"
      post "/destroy_favorite", to: "saved_routes#destroy_favorite"
      post "/update_favorite", to: "saved_routes#update_favorite"
    end
  end
end
