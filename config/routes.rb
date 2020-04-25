Rails.application.routes.draw do
  resources :breadcrumbs
  resource :users, except: %i[new]
  resource :sessions, only: %i[new create destroy]
  get "/users", to: "users#new"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  root "breadcrumbs#new"
end
