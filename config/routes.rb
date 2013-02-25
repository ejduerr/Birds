Birds::Application.routes.draw do
  resources :banners

  resources :chapters#, only: [:index, :show]
  resources :birds#, only: [:index, :show]
  
  namespace :admin do
	  resources :chapters
	  resources :birds
  end
  
  root :to => 'welcome#index'
end
