Rails.application.routes.draw do

  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id/:subject', to: 'search#subject', as: 'search_subject'
    post 'answer', to: 'answer#question'
  end

  namespace :users_backoffice do
    get 'welcome/index'
    get 'profile', to: 'profile#edit'
    patch 'profile', to: 'profile#update'
  end
  
  namespace :admins_backoffice do
    get 'welcome/index' #Dashboard
    resources :admins #administradores
    resources :subjects #Assuntos/Áreas
    resources :questions #Perguntas
  end

  devise_for :admins, skip: [:registrations]
  devise_for :users

  get 'inicio', to: 'site/welcome#index'
  get 'admins', to: 'admins_backoffice/welcome#index'

  root to: 'site/welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end