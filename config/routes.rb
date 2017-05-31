Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/show'

  get 'categories/create'

  get 'categories/update'

  get 'categories/destroy'

  get 'categories/edit'

  get 'categories/new'

  resources :categories, only: [:index, :show, :new, :create] do
    resources :articles, only: [:show, :new, :create]
  end
end
