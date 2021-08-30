Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "about_us#home"
  get 'toronto_events/about_us', to: 'about_us#about_us'
  get 'toronto_events/contact', to: 'about_us#contact_us'

  post 'toronto_events/contact_us_form', to: 'about_us#contact_us_form'#, as: 'TorontoEvents_contact'
  resources :events, only: [:index, :show]

  resources :subscribers, only: [:create]
  resources :events, only: [:index, :new]
end
