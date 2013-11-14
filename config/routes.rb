Jap::Application.routes.draw do
  resources :musics
  namespace :api do
    resources :musics
  end
  root :to => 'musics#index'
end
