Birds::Application.routes.draw do
  resources :banners

  resources :chapters
  resources :birds
  
  namespace :admin do
	  resources :chapters
	  resources :birds
  end
  
  root :to => 'welcome#index'
end
