Rails.application.routes.draw do
  get '/' => 'modes#index'

  resources :modes, only: [:index, :show]
end
