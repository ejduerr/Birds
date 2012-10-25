Birds::Application.routes.draw do
  resources :chapters

  resources :birds

   root :to => 'welcome#index'

end
