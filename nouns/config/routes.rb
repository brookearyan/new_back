Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :memes, :likes
    end
  end
end
