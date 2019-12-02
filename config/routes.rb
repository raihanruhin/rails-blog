Rails.application.routes.draw do
  #resources :portfolios
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  #get 'pages/home'
  root to: 'pages#home'

  #get 'pages/about'
  get 'about', to: 'pages#about'

  #get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs do 
    member do 
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
end
