Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'app#index'
  get '/tag/:tag', to: 'app#tag', as: :tag
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
