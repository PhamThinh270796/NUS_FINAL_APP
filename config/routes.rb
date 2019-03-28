Rails.application.routes.draw do
  namespace "admin" do
    root "users#index"
  end
  root "home#index"

  devise_for :users, controllers: {sessions: "sessions", registrations: "registrations"}

  resources :photos, :albums
end
