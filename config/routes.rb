Rails.application.routes.draw do
  devise_for :users
  root to:"questions#index"

  resources :users, only: [:index, :show] do
    collection do
      get :favorites
    end
  end

  resources :questions do
    resources :answers, only: [:create]
    resource :favorites, only: [:create, :destroy]
  end

  get 'tags/:tag', to: 'questions#index', as: :tag

  get 'favorites/index'

end
