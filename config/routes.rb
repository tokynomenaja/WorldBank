Rails.application.routes.draw do
 
  	namespace :admin do
	  	resources :projets
	  	resources :users
    end
 # 	resources :secteur
 # 	resources :pft
 #  resources :filiere

 	  namespace :super_admin do
	    resources :users   
	    resources :projets
  	end
  
   root to: 'home#index'
   devise_for :users
   resources :projets
   get '/search' => 'projets#search', :as => 'search_projet'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
