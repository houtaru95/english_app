Rails.application.routes.draw do

  devise_for :users
  get 'homes/index'
  root to:"homes#index"


  resources :users, only: [:index, :show] do
    collection do
      get :favorites
    end
  end

  resources :speaks do
    resources :comments, only: [:create]
  end

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
