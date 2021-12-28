Rails.application.routes.draw do
  devise_for :users
  resources :uploads
  root :to => 'uploads#index'
  get 'uploads/download' => 'uploads#download'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
