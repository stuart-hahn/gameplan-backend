Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :formations do
        resources :plays, shallow: true
      end
      resources :plays
    end
  end
  
end
