Birds::Application.routes.draw do
  resources :birds

   root :to => 'welcome#index'

end
