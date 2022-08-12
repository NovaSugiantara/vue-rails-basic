Rails.application.routes.draw do
  resources :properties
  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
    end
  end

  root to: "home#index"

  post "signin", controller: :signin, action: :create
  post "refresh", controller: :refresh, action: :create
  post "signup", controller: :signup, action: :create
  delete "signin", controller: :signin, action: :destroy

end
