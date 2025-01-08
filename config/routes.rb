Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resource :registration, only: [:new, :create]
  resources :passwords, param: :token
  resources :products do
    resources :subscribers, only: [ :create ]
    resource :unsubscribe, only: [ :show ]
  end
  root "products#index"
end
