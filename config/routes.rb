Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'shelters#index'
  root to: 'shelters#index'
  get "/shelters", to: 'shelters#index'
  get "/shelters/new", to: 'shelters#new'
  get "/shelters/:shelter_id", to: 'shelters#show'
  get "/shelters/:shelter_id/edit", to: 'shelters#edit'
  get "/shelters/:shelter_id/pets", to: 'shelters#pets'

  post "/shelters", to: 'shelters#create'
  patch "/shelters/:shelter_id", to: 'shelters#update'
  delete "/shelters/:shelter_id", to: 'shelters#destroy'

  get "/pets", to: 'pets#index'
  get "/pets/:pet_id", to: 'pets#show'
end
