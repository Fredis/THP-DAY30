Rails.application.routes.draw do
  get 'booking/new'
  root 'flights#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
