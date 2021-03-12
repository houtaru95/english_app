Rails.application.routes.draw do
  get 'speaks/index'
  devise_for :users
  root to:"questions#index"

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
