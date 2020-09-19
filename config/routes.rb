Rails.application.routes.draw do
  resources :monitoramentos
  resources :localidades
  resources :cidades
  resources :estados
  root 'welcome#index'
end
