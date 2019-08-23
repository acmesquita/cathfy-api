module Api
  module V1
    class ListsController < ApplicationController
      def index
				lists = List.order('created_at');
				render json: lists,status: :ok
			end
    end
  end
end