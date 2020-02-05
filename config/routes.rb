Rails.application.routes.draw do
  root'projets#index'
  get 'projets/show'
  get 'projets/edit'
  get 'projets/new'
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
