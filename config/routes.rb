# frozen_string_literal: true

Rails.application.routes.draw do
  resources :breadcrumbs
  resource :users
  resource :sessions, only: %i[new create destroy]
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  root "breadcrumbs#new"
end
