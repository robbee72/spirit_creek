Rails.application.routes.draw do
  resources :scorecards
  
  root :to => 'public#index'

  get 'show/:permalink', :to => 'public#show', :as => 'public_show'

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
