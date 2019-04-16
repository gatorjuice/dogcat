Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/show'
  get '/' => 'songs#index'

  resources :songs, only: [:index, :show]
end
