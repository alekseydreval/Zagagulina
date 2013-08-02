Zagogulin::Application.routes.draw do
  
  resources :categories, shallow: true do
  	collection do
  	  post 'sort'
  	end
    resources :goods, except: :index
  end

  root :to => 'categories#index'

end
