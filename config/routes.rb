Rails.application.routes.draw do
  root 'jobs#index'
  resources :companies, only: [:new, :create, :show] 
  resources :jobs, only: [:index, :show, :new, :create]
end
