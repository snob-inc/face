Rails.application.routes.draw do
  resources :breadcrumbs
  root 'breadcrumbs#new'
end
