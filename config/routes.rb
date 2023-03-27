Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :transactions, only: [:index]
  resources :users
  resources :contributions, only: [:index]

 
  
  get 'transactions/:id', to: 'transactions#show'
end
