Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :memes do
        resources :likes, only: [:create]
      end
    end
  end
end
