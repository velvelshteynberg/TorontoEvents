Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "about_us#home"
  get 'TorontoEvents/about_us', to: 'about_us#about_us'
  get 'TorontoEvents/contact', to: 'about_us#contact_us'

  post 'TorontoEvents/contact_us_form', to: 'about_us#contact_us_form'
  resources :events, only: [:index, :show]

  resources :subscribers, only: [:create]
end
