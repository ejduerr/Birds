Birds::Application.routes.draw do
  get "thankyou/index"

  resources :banners

  resources :chapters#, only: [:index, :show]
  resources :birds#, only: [:index, :show]
  resources :thankyou
  
  namespace :admin do
	  resources :chapters
	  resources :birds
	  resources :thankyou
  end
  
  root :to => 'welcome#index'
end
