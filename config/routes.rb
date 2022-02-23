Rails.application.routes.draw do
  resources :participants, only:[:new,:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'thankyou', to:'home#thankyou'
  get 'bikers/index'
  get '/participants', to: redirect('participants/new')
  get 'participants/show', to: redirect('/')
  get 'participants/edit', to: redirect('/')
  get 'participants/index'
  get 'gallery', to:'home#gallery'
end
