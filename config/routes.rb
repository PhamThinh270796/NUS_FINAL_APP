Rails.application.routes.draw do
  root "home#index"

  devise_for :users, controllers: {sessions: "sessions", registrations: "registrations"}

  resources :photos, :albums

  namespace "admin" do
    root "users#index"
  end
end
