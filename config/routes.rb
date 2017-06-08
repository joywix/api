Rails.application.routes.draw do
  root 'home#index'

  # People API
  match '/api/person/create' => 'api/persons#create', via: [:get, :post]
  match '/api/persons' => 'api/persons#index', via: [:get, :post]
  match '/api/person/show/:id' => 'api/persons#show', via: [:get, :post]
  match '/api/person/update/:id' => 'api/persons#update', via: [:get, :post]

  # Files API
  match '/api/file/create' => 'api/files#create', via: [:get, :post]
  match '/api/files' => 'api/files#index', via: [:get, :post]
  match '/api/file/show/:id' => 'api/files#show', via: [:get, :post]
  match '/api/file/update/:id' => 'api/files#update', via: [:get, :post]
end
