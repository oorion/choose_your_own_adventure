Rails.application.routes.draw do
  root 'stories#index'
  resources :stories, only: [:index, :new, :create, :edit]
end
