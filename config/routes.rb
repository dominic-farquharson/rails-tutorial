Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  # request to root will map to index action of welcome controller
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end