Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :sessions, only: [:new, :create]

      resources :listings, only: [:create, :show] do
        resources :bookings, only: [:index, :create]
      end
    end
  end
end
