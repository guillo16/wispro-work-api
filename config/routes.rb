Rails.application.routes.draw do
  devise_for :users,
  controllers: {
   sessions: 'users/sessions',
   registrations: 'users/registrations'
 }
 get '/member-data', to: 'members#show'

 namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [:index, :show, :create, :destroy ] do
        resources :postulations, only: [:create]
      end
      resources :postulations, only: [:index, :show, :update, :destroy]
      resources :users, only: :index
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
