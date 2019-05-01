Rails.application.routes.draw do
  get 'people/index'
  get 'people',to:'people#index'
  get 'people/:id',to:'people#show'
  get 'dengonban/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'helo/index'
  get 'helo', to: 'helo#index'
  get 'helo/other'
  post 'helo', to:'helo#index'
  post 'helo/index'
  get 'dengonban',to: 'dengonban#index'
  post 'dengonban',to: 'dengonban#index'
  get 'dengonban/index'
  post 'dengonban/index'
  get 'people/add'
  post 'people/add',to:'people#create'
end
