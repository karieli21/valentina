Rails.application.routes.draw do
  root 'inicio#index'
  get 'inicio/index'
  resources :venta_productos
  resources :productos
  resources :venta
  resources :clientes
  devise_for :usuarios

end
