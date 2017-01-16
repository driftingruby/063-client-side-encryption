Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users
  get :protected, to: 'visitors#index'
  root 'users#index'
end
