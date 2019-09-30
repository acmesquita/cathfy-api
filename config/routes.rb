Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
		namespace 'v1' do
			post   'user_token',                              to: 'user_token#create'

			get    '/users',                                  to: 'users#index'
			get    '/users/current',                          to: 'users#current'
			post   '/users/create',                           to: 'users#create'

			resources 'boards', only: [:index, :create] do
				get    '/lists',                                to: "lists#index"
			end

			resources 'lists', only: [:update] do
				put    '/cards',                                to: "cards#update_cards"
				
				resources 'cards', only: [:create, :update] do
					resources 'items', only: [:create, :update]
				end
			end
  	end
  end
end
