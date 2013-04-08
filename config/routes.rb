Birds::Application.routes.draw do
  get "aboutus/index"

  resources :banners

  resources :chapters#, only: [:index, :show]
  resources :birds#, only: [:index, :show]
  resources :aboutus
  
  namespace :admin do
	  resources :chapters
	  resources :birds
	  resources :aboutus
  end
  
  root :to => 'welcome#index'
end
