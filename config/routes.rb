Rails.application.routes.draw do
  get 'booking/new', to: "booking#new"
  post 'booking/new', to:"booking#create"
  root 'flights#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
