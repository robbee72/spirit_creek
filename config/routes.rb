Rails.application.routes.draw do
  
  resources :players
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :users do
     member do
       get :delete
     end
   end
  
   resources :scorecards do
     member do
      get :delete
     end
   end
  
  resources :courses do
     member do
      get :delete
     end
   end
  
  resources :players do
     member do
      get :delete
     end
   end
  
end
