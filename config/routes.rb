Rails.application.routes.draw do

	root 'bbq#new'
	resources :bbq

  	post "bbq/show" => "bbq#create", as: 'orders'

  	get 'bbq/show' => 'bbq#show', as: 'the'

  	get '/' => 'bbq#new'

  	post '/' => "bbq#new"

  	get 'error/page' => 'error#page', as: 'error' 

  	get 'all/orders' => 'order#show', as: 'overview'
  	post 'all/orders' => 'order#show'

  	get 'order/removed' => 'order#show', as: 'remove'
  	post 'order/removed' => 'order#remove'


	
  	get 'bbq/new' => 'bbq#new'

end
