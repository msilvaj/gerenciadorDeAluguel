Rails.application.routes.draw do
  devise_for :usuarios
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
