Rails.application.routes.draw do

  
   devise_for :users
   root to: 'projets#index', as: "projet"
   resources :projets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
