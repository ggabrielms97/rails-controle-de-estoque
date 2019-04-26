Rails.application.routes.draw do
  resources :people
  resources :people_categories
  resources :stocking_products
  resources :stockings
  resources :numberings
  resources :categories
  resources :brands
  devise_for :users
  resources :sale_products
  resources :sales do
  	collection do 
      get 'search_products'
  		get 'dinamic_search_products'
  	end
  end
  resources :clients
  resources :products do 
    collection do 
      post 'search_by_id'
      post 'verify_number'
      post 'save_number'
    end
  end
  resources :analytics do
    collection do 
      post 'result_stocking'
    end
  end

  get 'home/index'

  root 'home#index'

  scope 'searchs' do
    match 'search_products' => "searchs#search_products", :via => :get
  end
end
