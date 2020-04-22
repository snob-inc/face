Rails.application.routes.draw do
  resources :breadcrumbs
  resource :users
  resource :sessions, only: [:new, :create, :destroy]
  root 'breadcrumbs#new'
end
