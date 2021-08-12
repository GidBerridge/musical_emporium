Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :instruments do
    resources :bookings, only: [ :new, :create, :index ]
  end

  devise_for :users

  get "profile", action: :index, controller: "users"
end
