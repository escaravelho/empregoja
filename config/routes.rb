Rails.application.routes.draw do
  get 'companies/new'

  root 'jobs#index'
  resources :jobs, only: [:index, :show, :new, :create, :edit, :update]
  resources :companies, only: [:new, :create, :show, :edit, :update]
  resources :categories, only: [:show, :new, :create]
end
