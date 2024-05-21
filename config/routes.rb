Rails.application.routes.draw do
  resources :articles
  resources :searches do
    collection do
      get :analytics
    end
  end


  root "articles#index"
end
