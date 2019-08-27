Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
  	namespace 'v1' do
  		get 'lists', to: "lists#index"
			put 'lists/:list_id', to: "lists#update"

  		post 'lists/:list_id/cards', to: "cards#create"
  		put 'lists/:list_id/cards/:id', to: "cards#update"
  		put 'lists/:list_id/cards/', to: "cards#update_cards"
  	end
  end
end
