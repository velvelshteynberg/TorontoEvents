Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "about_us#home"
  get 'about_us/about_us', to: 'about_us#about_us'
  get 'about_us/contact', to: 'about_us#contact_us'
  post 'about_us/contact_us_form', to: 'about_us#contact_us_form'
  resources :events, only: [:index, :new, :show]
  resource :sessions, only: [:new, :delete]
  resources :users, only: [:new]
  resources :subscribers, only: [:create]
end
