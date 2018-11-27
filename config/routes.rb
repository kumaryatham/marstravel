Marstravel::Application.routes.draw do
  root 'travellers#new'
  get 'angularpath' => 'angularpath#index'

  resources :travellers
  get 'admin' => 'travellers#index'

end
