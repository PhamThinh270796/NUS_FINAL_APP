Rails.application.routes.draw do
  root "photos#index"
  devise_for :users, controllers: {sessions: "sessions", registrations: "registrations"}
  namespace "admin" do
    root "admin/users#index"
  end
end
