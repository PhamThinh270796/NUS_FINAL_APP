Rails.application.routes.draw do
  root "photos#index"
  devise_for :users
  devise_scope :user do 
    match '/sign-in' => "devise/sessions#new", :as => :login , via: :get
  end
end
