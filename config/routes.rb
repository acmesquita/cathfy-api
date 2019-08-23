Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
  	namespace 'v1' do
  		get 'lists', to: "lists#index"
  		post 'lists/:list_id/cards', to: "cards#create"
  	end
  end
end
