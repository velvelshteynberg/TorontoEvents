Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'toronto_events/about_us', to: 'about_us#about_us'
  get 'toronto_events/contact', to: 'about_us#contact_us'

  post 'toronto_events/contact_us_form', to: 'about_us#contact_us_form'#, as: 'TorontoEvents_contact'

  get 'admin/hosts', to: 'admin#hosts'
  get 'admin/hosts_show'
  get 'admin/events', to: 'admin#events'
  get 'admin/caterers', to: 'admin#caterers'
  get 'admin/caterers_show' 
  post 'admin/approve_multiple', to: 'admin#approve_multiple'
  
  
  resources :subscribers, only: [:create]


  resources :events, except: :show


  resources :host_organizations, only: [:create]
  resources :caterers, only: [:create]

  resources :events, only: [:show] do 
    resources :admin_reviews, only: [:create, :update]
    delete 'admin_reviews/destroy', to: 'admin_reviews#destroy'
    patch 'admin_reviews/patch', to: 'admin_reviews#update'

    get 'bookmarked', to: 'events#bookmark_event'
    get 'attending', to: 'events#attending_event'
  end 

  get 'bookmarked_events', to: 'events#bookmark'
  get 'attending_events', to: 'events#attending'

end
