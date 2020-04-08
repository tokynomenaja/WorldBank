Rails.application.routes.draw do
 

    resources :actus
    resources :apropos
    resources :contacts
    resources :publications

    	namespace :admin do
	  	resources :projets
	  	resources :users
      resources :publications

    end
 # 	resources :secteur
 # 	resources :pft
 #  resources :filiere

 	  namespace :super_admin do
      resources :publications
	    resources :users 
	    resources :projets
      resources :actus
      resources :tarifs
  	end
    
   root to: 'home#index'
   devise_for :users
   resources :projets
   get '/search' => 'projets#search', :as => 'search_projet'

   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
