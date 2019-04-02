Rails.application.routes.draw do
  namespace "admin" do
    root "users#index"
    get "/edit/user/:id", to: "users#edit", as: "edit_user"
    patch "update/user/:id", to:"users#update", as: "update_user"
    delete "/delete/user/:id", to: "users#destroy", as: "delete_user"
    get "/photos", to: "photos#index", as: "photos"
    get "/albums", to: "albums#index", as: "albums"
  end
  root "home#index"

  get '/public/:content', to: "home#index"
  devise_for :users, controllers: {sessions: "sessions", registrations: "registrations"}
  resources :users, only: [:edit, :update], path_names: {edit: 'user_path'}
  resources :photos, :albums
end
