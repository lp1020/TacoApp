Rails.application.routes.draw do

  root 'tacos#index'

  get 'tacos', to: 'tacos#all'
  get 'ingredients', to: 'ingredients#all'

  resources :tacos, only: [:index, :show]


end
