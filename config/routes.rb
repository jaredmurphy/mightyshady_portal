Rails.application.routes.draw do
  get 'income_categories/index'

  get 'income_categories/show'

  get 'incomes/index'

  get 'incomes/show'

  get 'incomes/new'

  get 'incomes/create'

  get 'incomes/edit'

  get 'incomes/update'

  get 'expenses/index'

  get 'expenses/show'

  get 'expenses/new'

  get 'expenses/create'

  get 'expenses/edit'

  get 'expenses/update'

  get 'events/index'

  get 'events/show'

  get 'events/new'

  get 'events/create'

  get 'events/edit'

  get 'events/update'

  get 'bands_played_with/index'

  get 'bands_played_with/show'

  get 'bands_played_with/new'

  get 'bands_played_with/created'

  get 'bands_played_with/edit'

  get 'bands_played_with/update'

  get 'event_categories/index'

  get 'event_categories/show'

  get 'venues/index'

  get 'venues/show'

  get 'venues/new'

  get 'venues/created'

  get 'venues/edit'

  get 'venues/update'

  get 'venues/destroy'

  get 'bands/index'

  get 'bands/show'

  get 'bands/new'

  get 'bands/create'

  get 'bands/edit'

  get 'bands/update'

  get 'bands/destroy'

  get '/calendar', :to => "calendar#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
