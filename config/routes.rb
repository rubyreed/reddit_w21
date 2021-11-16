Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root is a get '/'
  root "static#home"
  # get '/', to:"static#home"
  resources :cars
end
