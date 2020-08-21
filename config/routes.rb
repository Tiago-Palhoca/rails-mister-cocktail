Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [ :new, :create]   
  end
  resources :ingredients
  resources :doses, only: [ :destroy, :update]  
end
