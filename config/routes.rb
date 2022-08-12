Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :trips do
    resources :bookings, only: %i[new create show]
  end
  resources :bookings, except: %i[new create show]
end
