Birds::Application.routes.draw do
  resources :banners

  resources :chapters#, only: [:index, :show]
  resources :birds#, only: [:index, :show]
  resources :welcomethanks
  
  namespace :admin do
	  resources :chapters
	  resources :birds
	  resources :welcomethanks
  end
  
  root :to => 'welcome#index'
end
