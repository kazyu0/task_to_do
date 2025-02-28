Rails.application.routes.draw do
 resources :tasks do
  member do
    
  end
end
  root 'tasks#index'
end
