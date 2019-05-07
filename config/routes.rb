Rails.application.routes.draw do
  namespace "admin" do
    root "users#index"
    resources :users, only: [:edit, :update, :destroy]
    resources :photos, only: [:index, :edit]
    resources :albums, only: [:index, :edit]
  end
  root "home#index"

  devise_for :users, controllers: {sessions: "sessions", registrations: "registrations", omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:edit, :update], path_names: {edit: 'user_path'}
  resources :photos, :albums
end
