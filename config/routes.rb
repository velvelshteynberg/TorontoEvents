Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "about_us#home"
  get 'about_us/about_us', to: 'about_us#about_us'
  get 'about_us/contact', to: 'about_us#contact_us'
  resources :events, only: [:show] do 
    resources :admin_reviews, only: [:create, :update]
    delete 'admin_reviews/destroy', to: 'admin_reviews#destroy'
    patch 'admin_reviews/patch', to: 'admin_reviews#update'
  end 
  resources :events, only: [:new, :index]
  resource :sessions, only: [:new, :delete]
  resources :users, only: [:new]
  resources :subscribers, only: [:create]
end
