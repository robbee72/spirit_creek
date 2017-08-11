Rails.application.routes.draw do
  
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
  
end
