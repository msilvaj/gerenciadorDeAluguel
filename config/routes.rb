Rails.application.routes.draw do
  devise_for :modeis
  resources :refeicoes
  resources :trefeicoes
  resources :dietas
  devise_for :usuarios
  #resources :usuarios
  root to: "dietas#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
