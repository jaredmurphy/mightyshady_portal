Rails.application.routes.draw do

  namespace :api do
      namespace :v1 do
        resources :bands, only: [:index, :show, :create, :edit, :update]
        resources :events, only: [:index, :show, :create, :edit, :update]
      end
    end
  get '/calendar', :to => "calendar#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
