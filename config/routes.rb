Rails.application.routes.draw do
  resources :monitoramentos
  resources :localidades
  resources :cidades
  resources :estados
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end