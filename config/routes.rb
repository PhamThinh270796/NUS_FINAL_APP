Rails.application.routes.draw do
  root "photos#index"
  devise_for :users
end
