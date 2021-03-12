Rails.application.routes.draw do

  get 'homes/index'

  devise_for :users
  root to:"homes#index"

  resources :users, only: [:index, :show] do
    collection do
      get :favorites
    end
  end

  resources :speaks, only: [:index, :new, :create]

  resources :questions do
    resources :answers, only: [:create]
    resource :favorites, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end

  get 'tags/:tag', to: 'questions#index', as: :tag

  get 'favorites/index'

end
