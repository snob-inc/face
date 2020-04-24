# frozen_string_literal: true

Rails.application.routes.draw do
  resources :breadcrumbs
  resource :users
  resource :sessions, only: %i[new create destroy]
  root "breadcrumbs#new"
end
