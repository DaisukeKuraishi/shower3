Rails.application.routes.draw do

  root 'grayscales#index'

  resources :grayscales

end
