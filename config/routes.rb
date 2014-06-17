Arapi::Application.routes.draw do

  get 'uuids'      => 'uuids#create'
  get 'uuids/:num' => 'uuids#create'

  scope :articles, defaults: { format: :json } do
    get    ''     => 'articles#index'
    get    ':ids' => 'articles#index'
    put    ':id'  => 'articles#create_or_replace'
    patch  ':id'  => 'articles#update'
    delete ':id'  => 'articles#destroy'
  end

  scope :comments, defaults: { format: :json } do
    get    ''     => 'comments#index'
    get    ':ids' => 'comments#index'
    put    ':id'  => 'comments#create_or_replace'
    patch  ':id'  => 'comments#update'
    delete ':id'  => 'comments#destroy'
  end

  scope :duties, defaults: { format: :json } do
    get    ''     => 'duties#index'
    get    ':ids' => 'duties#index'
    put    ':id'  => 'duties#create_or_replace'
    patch  ':id'  => 'duties#update'
    delete ':id'  => 'duties#destroy'
  end

  scope :jobs, defaults: { format: :json } do
    get    ''     => 'jobs#index'
    get    ':ids' => 'jobs#index'
    put    ':id'  => 'jobs#create_or_replace'
    patch  ':id'  => 'jobs#update'
    delete ':id'  => 'jobs#destroy'
  end

  scope :tags, defaults: { format: :json } do
    get    ''     => 'tags#index'
    get    ':ids' => 'tags#index'
    put    ':id'  => 'tags#create_or_replace'
    patch  ':id'  => 'tags#update'
    delete ':id'  => 'tags#destroy'
  end

  scope :users, defaults: { format: :json } do
    get    ''     => 'users#index'
    get    ':ids' => 'users#index'
    put    ':id'  => 'users#create_or_replace'
    patch  ':id'  => 'users#update'
    delete ':id'  => 'users#destroy'
  end

end
