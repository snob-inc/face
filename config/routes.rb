Rails.application.routes.draw do
  resources :breadcrumbs
  resource :users, except: %i[new]
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
  post "/", to: "breadcrumbs#create"
  root "breadcrumbs#new"
end
