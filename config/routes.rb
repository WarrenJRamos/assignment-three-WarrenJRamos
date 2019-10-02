Rails.application.routes.draw do
  resources :parts
  resources :cars do
    get :autocomplete_car_name, on: :collection
    collection do
      get 'search'
    end
  end

  resources :makes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
