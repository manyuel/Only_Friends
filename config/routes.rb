Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'bookings/:id/confirm', to: 'bookings#confirm', as: 'confirm'
  get 'bookings/:id/reject', to: 'bookings#reject', as: 'reject'

  resources :users do
    resources :bookings, only: %i[new create show]
  end
  resources :bookings, only: %i[index destroy]

  get 'bookings/:id/confirmation', to: 'bookings#confirmation', as: 'confirmation'
end
