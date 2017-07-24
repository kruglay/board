Rails.application.routes.draw do
  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  resources :users
  resources :advertisements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'devise/sessions#new'
end
