Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users do
    resources :bookings, only: :create
  end
  resources :bookings, only: %i[index destroy]

  get 'bookings/index', to: 'bookings#index'
  get 'bookings/:id/confirm', to: 'bookings#confirm'
  get 'bookings/:id/reject', to: 'bookings#reject'
end
