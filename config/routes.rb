Rails.application.routes.draw do
  devise_for :users
  root to:"questions#index"
  resources :questions do
    resources :answers, only: [:create]
    resource :favorites, only: [:create, :destroy]
  end

  get 'tags/:tag', to: 'questions#index', as: :tag

end
