Rails.application.routes.draw do
  root to: 'incidents#new'
  resources :incidents, only: [:new, :create, :show]
end
