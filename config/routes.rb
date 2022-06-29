Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'refrigerateurs#index'

  get '/create-refrigerateur', to: 'refrigerateurs#new'

  get '/ingredients', to: 'ingredients#index'

  get '/create-ingredient', to: 'ingredients#new'
  
end
