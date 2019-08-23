module Api
  module V1
    class ListsController < ApplicationController
      def index
				lists = List.order('created_at');
				render json: {status: 'SUCCESS', message:'Listas', data:lists},status: :ok
			end

      def show
				list = List.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded List', data:list},status: :ok
			end
    end
  end
end