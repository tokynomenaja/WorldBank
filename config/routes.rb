Rails.application.routes.draw do
 # namespace :admin do
 # 	resources :projets
 # 	resources :users
 # end
 # 	resources :secteur
 # 	resources :pft
 #    resources :filiere

  
   root to: 'projets#index'
   devise_for :users
   resources :projets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
